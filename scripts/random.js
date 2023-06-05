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
        tariners: buildPath('trainers.txt'),
        items: buildPath('items.txt')
    }
    
    // Editar archivo de pokemon
    async function randomizePokemon() {
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
    
    await randomizePokemon();
    
    /*
    // Editar archivo de encuentros
    let readEncounters = readline.createInterface({
        input: fs.createReadStream(filePaths.encounters),
    })
    
    readEncounters.on('line', function(line) {
        const lineCopy = line.split(',');
        if (lineCopy.length == 3 && isNaN(parseInt(lineCopy[0]))) {
            let valueResult = 'Pokemon' + ',' + lineCopy[1] + ',' + lineCopy[2];
            console.log(valueResult);
            // TO - DO: Replace line for valueResult
        }
    
    })
    
    
    
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