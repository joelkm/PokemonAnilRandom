const fs = require('fs');
const path = require('path');
const { getRandomMove ,getRandomAbility, getRandomPokemon } = require('./utils/getRandomProperty');

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
        tariners: buildPath('trainers.txt'),
        items: buildPath('items.txt')
    }
    
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
                resolve()
            })
        })
    }

    async function randomizeTms() {
        return await new Promise(function(resolve) {
        
            fs.readFile(filePaths.tms, 'utf-8', async function(err, data) {
                let lines = await data.split('\n');
                let regExp = /\[([^)]+)\]/;
                for (let index = 0; index < lines.length; index++) {
                    let reducedLine = regExp.exec(lines[index]);
                    let values = reducedLine.split(',');
                    if (values.length == 1) { // LA LINEA CORRESPONDE A UN ATAQUE
                        reducedLine = await getRandomMove(filePaths.moves)
                        lines[index] = `[${reducedLine}]`;
                    } else {
                        for(let index = 0; index < values.length; index++) {
                            values[index] = await getRandomPokemon(filePaths.pokemon);
                        }
                        lines[index] = values.join(',');
                    }
                }
                const resultFile = await lines.join('\n');
                fs.writeFile(filePaths.tms, resultFile, 'utf-8', function(){});
                resolve();
            })
        })
    }    
    
    await randomizePokemon();
    await randomizeTms();
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