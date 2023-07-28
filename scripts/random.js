const fs = require('fs');
const path = require('path');
const { getRandomMove, getRandomPokemon, getRandomItem } = require('./utils/getRandomProperty');
const { buildMoveSet, buildAbilitySet, buildTmLearnerList } = require('./utils/valueBuilders');

async function randomize() {

    function buildPath(file) {
        return path.join(__dirname, '..', '..', 'PBS', file);
    }

    const filePaths = {
        pokemon: buildPath('pokemon.txt'),
        moves: buildPath('moves.txt'),
        abilities: buildPath('abilities.txt'),
        encounters: buildPath('encounters.txt'),
        tms: buildPath('tm.txt'),
        trainers: buildPath('trainers.txt'),
        items: buildPath('items.txt')
    }

    let pokemonCollection = []; // Filled in randomizePokemonFile(), used in randomizeTmsFile()

    async function randomizePokemonFile() {

        function getLearningLevels(values) {
            return values.filter(function (element) {
                if (!isNaN(parseInt(element))) return element;
            });
        }

        return await new Promise(function (resolve) {
            fs.readFile(filePaths.pokemon, 'utf-8', async function (err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    const splitedLineByEqual = lines[index].split('=');
                    const property = splitedLineByEqual[0];

                    const values = splitedLineByEqual[1].split(',');
                    switch (property) {
                        case 'Moves':
                            const learningLevels = getLearningLevels(values);

                            lines[index] = property + '=' + await buildMoveSet(learningLevels);
                            break;
                        case 'Abilities':
                            lines[index] = property + '=' + await buildAbilitySet(values);
                            break;
                        case 'HiddenAbility':
                            lines[index] = property + '=' + await buildAbilitySet(values);
                            break;
                        case 'InternalName':
                            pokemonCollection.push(lineCopy[1].split('\r')[0]); // Will come handy when randomizing TMs
                            break;
                        default:
                            break;
                    }
                }

                const resultFile = await lines.join('\n');
                await fs.writeFile(filePaths.pokemon, resultFile, 'utf-8', function () { })

                console.log('Pokemon: Randomizados con exito');
                resolve()
            })
        })
    }

    async function randomizeTmsFile() {

        function isTmItem(itemParams) {
            itemParams[1].includes('TM') && itemParams[2].includes('MT')
        }

        let tmsCollection = []; // This is used to bind the TM data to the in-game items

        await new Promise(function (resolve) {

            fs.readFile(filePaths.tms, 'utf-8', async function (err, data) {
                let lines = await data.split('\n');
                const mohs = ['SURF', 'STRENGTH', 'ROCKCLIMB', 'CUT', 'ROCKSMASH', 'WATERFALL', 'FLY', 'DIVE'];
                // Essential tms that we shouldn't modify

                for (let index = 0; index < lines.length; index++) {
                    if (lines[index].includes('#')) continue;

                    if (reducedLine.split(',').length == 1) {
                        let tmMove = await lines[index].split('[')[1].split(']')[0];

                        if (!mohs.includes(tmMove)) tmMove = await getRandomMove(filePaths.moves);

                        lines[index] = `[${tmMove}]`;
                        tmsCollection.push(tmMove);
                    } else {
                        lines[index] = buildTmLearnerList();
                    }
                }

                const resultFile = await lines.join('\n');
                await fs.writeFile(filePaths.tms, resultFile, 'utf-8', function () { });

                console.log('Datos de MTs: Randomizados con exito')
                resolve();
            })
        })
        await new Promise(function (resolve) {

            fs.readFile(filePaths.items, 'utf-8', async function (err, data) {
                let lines = await data.split('\n');
                let tmsCollectionIndex = 0;
                for (let index = 0; index < lines.length; index++) {
                    let itemParams = lines[index].split(',');

                    if (isTmItem(itemParams)) {
                        itemParams[itemParams.length - 1] = tmsCollection[tmsCollectionIndex];
                        tmsCollectionIndex++;
                    }

                    lines[index] = await itemParams.join(',');
                }

                const resultFile = await lines.join('\n');
                await fs.writeFile(filePaths.items, resultFile, 'utf-8', function () { });

                console.log('Objetos MT: Enlazados con exito');
                resolve();
            })
        });
    }

    async function randomizeEncountersFile() {
        return await new Promise(function (resolve) {

            fs.readFile(filePaths.encounters, 'utf-8', async function (err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    let values = lines[index].split(',');
                    if (values.length != 1 && isNaN(values[0])) {
                        values[0] = await getRandomPokemon(pokemonCollection)
                        lines[index] = values.join(',');
                    }
                }

                const resultFile = await lines.join('\n');
                await fs.writeFile(filePaths.encounters, resultFile, 'utf-8', function () { });

                console.log('Randomizado con exito: Encuentros')
                resolve();
            })
        })
    }

    async function randomizeTrainersFile() {
        return await new Promise(function (resolve) {

            fs.readFile(filePaths.trainers, 'utf-8', async function (err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    if (lines[index].includes('#')) {
                        if (!lines[index + 1].includes('#')) {
                            index = index + 3;
                            let trainerInfo = lines[index].split(',')
                        }
                    } else {
                        let pokemonValues = lines[index].split(',');
                        pokemonValues[0] = await getRandomPokemon(pokemonCollection);
                        lines[index] = pokemonValues[0] + ',' + pokemonValues[1];
                        if (pokemonValues[2] && pokemonValues[2] != '') {
                            pokemonValues[2] = await getRandomItem(filePaths.items);
                            lines[index] = lines[index] + ',' + pokemonValues[2];
                        }
                    }
                }

                const resultFile = await lines.join('\n');
                await fs.writeFile(filePaths.trainers, resultFile, 'utf-8', function () { });

                console.log('Randomizado con exito: Entrenadores')
                resolve();
            })
        })
    }

    await randomizePokemonFile();
    await randomizeTmsFile();
    await randomizeEncountersFile();
    await randomizeTrainersFile();
}