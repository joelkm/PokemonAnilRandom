const fs = require('fs');
const { getRandomMove, getRandomPokemon, getRandomItem } = require('./utils/getRandomProperty');
const { buildLvlMoveSet, buildEggMoveSet, buildAbilitySet, buildTmLearnerList } = require('./utils/valueBuilders');
const filePaths = require('./utils/fileHandler');

async function randomize() {

    let pokemonCollection = []; // Filled in processPokemonFile(), used in processItemsFile()
    let maxEvolvedPokemon = [];
    let megastoneCollection = [];
    let megaPokemon = []
    let megaMap = new Map()

    function isCommentLine(line) { // Useful to detect comment lines in any file
        if (line.includes('#') || !line.split('/r')[0]) return true;
        else return false;
    }


    async function processPokemon() {

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

                    if (splitedLineByEqual[1]) {
                        const values = splitedLineByEqual[1].split(',');
                        switch (property) {
                            case 'Moves':
                                const learningLevels = getLearningLevels(values);

                                lines[index] = property + '=' + await buildLvlMoveSet(learningLevels);
                                break;
                            case 'EggMoves':
                                const eggMoves = values.split(',');
                                lines[index] = property + '=' + await buildEggMoveSet(eggMoves);
                                break;
                            case 'Abilities':
                            case 'HiddenAbility':
                                lines[index] = property + '=' + await buildAbilitySet(values);
                                break;
                            case 'WildItemCommon':
                            case 'WildItemUncommon':
                            case 'WildItemRare':
                                lines[index] = property + '=' + await getRandomItem(filePaths.items);
                                break;
                            case 'InternalName':
                                pokemonCollection.push(values[0].split('\r')[0]); // Will come handy when randomizing TMs
                                break;
                            case 'Evolutions':
                                if (!value) {
                                    maxEvolvedPokemon.push(pokemonCollection[pokemonCollection.length - 1]);
                                }
                                break;
                            default:
                                break;
                        }
                    }
                }

                const resultFile = await lines.join('\n');
                await fs.writeFile(filePaths.pokemon, resultFile, 'utf-8', function () { })

                console.log('Pokemon: Randomizados con exito');
                resolve()
            })
        })
    }


    async function processItems() {

        function isTmItem(itemParams) {
            if (itemParams[1].includes('TM') && itemParams[4] == 4) return true;
            else return false;

        }

        function isMegastone(itemParams) {
            if (itemParams[4] == 6 && !itemParams[2].includes('Carta')) return true; // Megastones are flagged as "mail items", we discard these with the second condition
            else return false;
        }

        function isCaptureBall(itemParams) {
            if (itemParams[4] == 3) return true;
            else return false
        }

        function getMegastoneUser(itemParams) {
            return itemParams[6].split(' a ')[1].split('.')[0].toUpperCase();
        }

        let tmsCollection = []; // This is used to bind the TM data to the in-game items

        await new Promise(function (resolve) {

            fs.readFile(filePaths.tms, 'utf-8', async function (err, data) {
                let lines = await data.split('\n');
                const mohs = ['SURF', 'STRENGTH', 'ROCKCLIMB', 'CUT', 'ROCKSMASH', 'WATERFALL', 'FLY', 'DIVE', 'METRONOME'];
                // Essential tms that we shouldn't modify

                for (let index = 0; index < lines.length; index++) {
                    if (isCommentLine(lines[index])) continue;

                    if (lines[index].split(',').length == 1) {
                        console.log(lines[index]);
                        let tmMove = await lines[index].split('[')[1].split(']')[0];

                        if (!mohs.includes(tmMove)) tmMove = await getRandomMove(filePaths.moves);

                        lines[index] = `[${tmMove}]`;
                        tmsCollection.push(tmMove);
                    } else {
                        lines[index] = buildTmLearnerList(pokemonCollection);
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

                    if (isMegastone(itemParams)) {
                        let indexOfMegastone = megastoneCollection.push(itemParams[1]) - 1;
                        let megastoneUser = getMegastoneUser(itemParams);

                        megaPokemon.push(megastoneUser);
                        megaMap.set(megastoneUser, indexOfMegastone)

                        if (megastoneUser == 'FLAPPLE') {
                            megaPokemon.push('APPLETUN')
                            megaMap.set('APPLETUN', indexOfMegastone);
                        }
                    }

                    if (isCaptureBall(itemParams)) {
                        switch (itemParams[1]) {
                            case 'POKEBALL':
                                itemParams[5] = 200;
                                break;
                            case 'GREATBALL':
                                itemParams[5] = 800;
                                break;
                            case 'ULTRABALL':
                                itemParams[5] = 1500;
                                break;
                            case 'MASTERBALL':
                                break;
                            default:
                                itemParams[5] = 2500;
                                break;
                        }
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


    async function processEncounters() {
        function isPokemon(values) {
            if (values.length != 1 && isNaN(values[0])) return true; // Pattern to identify pokemon lines 
            else return false;
        }

        return await new Promise(function (resolve) {

            fs.readFile(filePaths.encounters, 'utf-8', async function (err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    let values = lines[index].split(',');

                    if (isPokemon(values)) {
                        values[0] = await getRandomPokemon(pokemonCollection)
                        lines[index] = values.join(',');
                    }
                }

                const resultFile = await lines.join('\n');
                await fs.writeFile(filePaths.encounters, resultFile, 'utf-8', function () { });

                console.log('Encuentros: Randomizado con exito');
                resolve();
            })
        })
    }


    async function processTrainers() {
        return await new Promise(function (resolve) {

            function usesCombatItem(pokemonParams) {
                if (pokemonParams[2] && pokemonParams[2] != '') return true;
                else return false
            }

            fs.readFile(filePaths.trainers, 'utf-8', async function (err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    if (isCommentLine(lines[index])) {
                        if (!isCommentLine(lines[index + 1])) { // Detects that the next line corresponds to the trainer name, so it skips to the next pokemon
                            index = index + 3;
                        }
                    } else {
                        let pokemonParams = lines[index].split(',');
                        pokemonParams[0](pokemonParams[1] < 36)
                            ? await getRandomPokemon(pokemonCollection)
                            : await getRandomPokemon(maxEvolvedPokemon);

                        if (usesCombatItem(pokemonParams)) {
                            if (megastoneCollection.includes(pokemonParams[2])) {
                                pokemonParams[0] = await getRandomPokemon(megaPokemon)
                                pokemonParams[2] = megastoneCollection[megaMap.get(pokemonParams[0])];
                            } else {
                                pokemonParams[2] = await getRandomItem(filePaths.items, [7]);
                            }
                            lines[index] = lines[index] + ',' + pokemonParams[2];
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


    await processPokemon();
    await processItems();
    await processEncounters();
    await processTrainers();
}

randomize();