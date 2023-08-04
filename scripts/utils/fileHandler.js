const path = require('path');

function buildPath(file) {
    return path.join(__dirname, '..', '..', '..', 'PBS', file);
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

module.exports = filePaths;