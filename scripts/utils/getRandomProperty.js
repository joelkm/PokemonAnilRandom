const nthline = require('nthline');

function getRandomIntervalNumber(min, max) {
    return Math.floor((Math.random() * (max - min + 1) + min));
}

module.exports = {
    getRandomMove: async function (filePath, firstLine = 0, lastLine = 643, hitMoveIsMandatory) {
        let line;
        let values;
        do {
            const randomLine = getRandomIntervalNumber(firstLine, lastLine);
            line = await nthline(randomLine, filePath);
            values = line.split(',');
        } while (hitMoveIsMandatory && values[6] == "Status");

        return values[1];
    },
    getRandomAbility: async function (filePath, firstLine = 0, lastLine = 204) {
        const randomLine = getRandomIntervalNumber(firstLine, lastLine);
        const line = await nthline(randomLine, filePath);
        return line.split(',')[1];
    },
    getRandomPokemon: async function (pokemon) {
        const randomPokemonNumber = getRandomIntervalNumber(0, pokemon.length - 1)
        return pokemon[randomPokemonNumber];
    },
    getRandomCombatItem: async function (filePath, firstLine = 0, lastLine = 688) {
        let line;
        let itemParams;
        do {
            const randomLine = getRandomIntervalNumber(firstLine, lastLine);
            line = await nthline(randomLine, filePath);
            itemParams = line.split(',');
        } while (itemParams[4] != 7); // Item is not identified as "Combat"

        return itemParams[1];
    }
}