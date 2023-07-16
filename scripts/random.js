const fs = require('fs');
const path = require('path');
const { getRandomMove ,getRandomAbility, getRandomPokemon, getRandomItem } = require('./utils/getRandomProperty');

async function main() {

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
    
    let pokemonCollection = [];
    await new Promise(function (resolve) { 
        fs.readFile(filePaths.pokemon, 'utf-8', async function(err, data) {
            let lines = await data.split('\n');
            for (let index = 0; index < lines.length; index++) {
                let lineCopy = lines[index].split('=');
                if (lineCopy[0] == 'InternalName') {
                    pokemonCollection.push(lineCopy[1].split('\r')[0]);
                }
            }
            resolve();
        })
    })

    // Editar archivo de pokemon
    async function randomizePokemon() {
        return await new Promise(function(resolve) {
        
            fs.readFile(filePaths.pokemon, 'utf-8', async function(err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    const lineCopy = lines[index].split('=');
                    const property = lineCopy[0];
        
                    const values = (lineCopy[1]) ? lineCopy[1].split(',') : null;
                    let valueResult = ''
                    switch (property) {
                        case 'Moves':
                            const learningLevels = values.filter(function(element) {
                                if(!isNaN(parseInt(element))) return element;
                            });
                            for (let index = 0; index < learningLevels.length; index++) {
                                valueResult = valueResult + learningLevels[index] + ',' + await getRandomMove(filePaths.moves) + ',';
                            }
                            valueResult = valueResult.slice(0,-1);
                            lines[index] = property + '=' + valueResult;
                            break;
                        case 'Abilities':
                            for (let index = 0; index < values.length; index++) {
                                valueResult = valueResult + await getRandomAbility(filePaths.abilities) + ',';
                            }
                            valueResult = valueResult.slice(0,-1);
                            lines[index] = property + '=' + valueResult;
                            break;
                            case 'HiddenAbility':
                                for (let index = 0; index < values.length; index++) {
                                    valueResult = valueResult + await getRandomAbility(filePaths.abilities) + ',';
                                }
                                valueResult = valueResult.slice(0,-1);
                                lines[index] = property + '=' + valueResult;
                            break;
                            default:
                                break;
                            }
                }
                const resultFile = await lines.join('\n');
                fs.writeFile(filePaths.pokemon, resultFile, 'utf-8', function(){})
                console.log('Randomizado con exito: Pokemon')
                resolve()
            })
        })
    }

    async function randomizeTms() {
        return await new Promise(function(resolve) {
        
            fs.readFile(filePaths.tms, 'utf-8', async function(err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    if (!lines[index].includes('#')) {
                        let reducedLine = lines[index].split('[')[0].split(']')[0];
                        if (reducedLine.split(',').length == 1) {
                            reducedLine = await getRandomMove(filePaths.moves)
                            lines[index] = `[${reducedLine}]`;
                        } else {
                            let learners = '';
                            for(let index = 0; index < pokemonCollection.length; index++) {
                                if(Math.random() > 0.5) learners = learners + pokemonCollection[index] + ',';
                            }
                            learners = learners.slice(0, -1);
                            lines[index] = learners;
                        }
                    }
                }
                const resultFile = await lines.join('\n');
                fs.writeFile(filePaths.tms, resultFile, 'utf-8', function(){});
                console.log('Randomizado con exito: MTs')
                resolve();
            })
        })
    }

    async function randomizeEncounters() {
        return await new Promise(function(resolve) {
        
            fs.readFile(filePaths.encounters, 'utf-8', async function(err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    let values = lines[index].split(',');
                    if (values.length != 1 && isNaN(values[0])) {
                        values[0] = await getRandomPokemon(pokemonCollection)
                        lines[index] = values.join(',');
                    }
                }
                const resultFile = await lines.join('\n');
                fs.writeFile(filePaths.encounters, resultFile, 'utf-8', function(){});
                console.log('Randomizado con exito: Encuentros')
                resolve();
            })
        })
    }
    
    async function randomizeTrainers() {
        return await new Promise(function(resolve) {
        
            fs.readFile(filePaths.trainers, 'utf-8', async function(err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    if (lines[index].includes('#')) {
                        if (!lines[index+1].includes('#')) {
                            index = index + 3;
                            let trainerInfo = lines[index].split(',')
                        }
                    } else {
                        let pokemonValues = lines[index].split(',');
                        pokemonValues[0] = await getRandomPokemon(pokemonCollection);
                        lines[index] = pokemonValues[0] + ',' + pokemonValues[1];
                        if(pokemonValues[2] && pokemonValues[2] != '') {
                            pokemonValues[2] = await getRandomItem(filePaths.items);
                            lines[index] = lines[index] + ',' + pokemonValues[2];
                        }
                    }
                }
                const resultFile = await lines.join('\n');
                fs.writeFile(filePaths.trainers, resultFile, 'utf-8', function(){});
                console.log('Randomizado con exito: Entrenadores')
                resolve();
            })
        })
    }

    await randomizePokemon();
    await randomizeTms();
    await randomizeEncounters();
    await randomizeTrainers();


    /*
    // Editar archivo de encuentros
    async function randomizeEncounters() {
        return await new Promise(function() {
        
            fs.readFile(filePaths.pokemon, 'utf-8', async function(err, data) {
                let lines = await data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    const lineCopy = lines[index].split('=');
                    const property = lineCopy[0];
        
                    const values = (lineCopy[1]) ? lineCopy[1].split(',') : null;
                    let valueResult = ''
                    switch (property) {
                        case 'Moves':
                            const learningLevels = values.filter(function(element) {
                                if(!isNaN(parseInt(element))) return element;
                            });
                            for (let index = 0; index < learningLevels.length; index++) {
                                valueResult = valueResult + learningLevels[index] + ',' + await getRandomMove(filePaths.moves) + ',';
                            }
                            valueResult = valueResult.slice(0,-1);
                            lines[index] = property + '=' + valueResult;
                            break;
                        case 'Abilities':
                            for (let index = 0; index < values.length; index++) {
                                valueResult = valueResult + await getRandomAbility(filePaths.abilities) + ',';
                            }
                            valueResult = valueResult.slice(0,-1);
                            lines[index] = property + '=' + valueResult;
                            break;
                            case 'HiddenAbility':
                                for (let index = 0; index < values.length; index++) {
                                    valueResult = valueResult + await getRandomAbility(filePaths.abilities) + ',';
                                }
                                valueResult = valueResult.slice(0,-1);
                                lines[index] = property + '=' + valueResult;
                            break;
                            default:
                                break;
                            }
                }
                const resultFile = await lines.join('\n')        
                fs.writeFile(filePaths.pokemon, resultFile, 'utf-8', function(){})
            })
        })
    } 
    
    
    // Editar entrenadores
    
    
    
    // Editar items
    /*
    switch (line) {
        case 'Moves':
            
            break;
        case 'Abilities':
            
            break;
        case 'HiddenAbility':
            
            break;
        default:
            break;
    }*/
}

main();