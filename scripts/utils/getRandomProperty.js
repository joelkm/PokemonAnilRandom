const nthline = require('nthline');

let bannedAbilities = ['WONDERGUARD'];

function getRandomIntervalNumber(min, max) {
    return Math.floor((Math.random() * (max - min + 1) + min));
}

module.exports = {
    getRandomMove: async function (filePath, hitMoveIsMandatory = false, firstLine = 0, lastLine = 648) {
        let line;
        let values;
        do {
            try {
                const randomLine = getRandomIntervalNumber(firstLine, lastLine);
                line = await nthline(randomLine, filePath);
                values = line.split(',');
            } catch (error) {
                lastLine = 643;
            }
        } while (!line || hitMoveIsMandatory && values[6] == "Status");

        return values[1];
    },
    getRandomAbility: async function (filePath, firstLine = 0, lastLine = 204) {
        let line, values;
        do {
            const randomLine = getRandomIntervalNumber(firstLine, lastLine);
            line = await nthline(randomLine, filePath);
            ability = line.split(',')[1];
        } while (bannedAbilities.includes(ability));
        return ability
    },
    getRandomPokemon: async function (pokemon) {
        const randomPokemonNumber = getRandomIntervalNumber(0, pokemon.length - 1)
        return pokemon[randomPokemonNumber];
    },
    getRandomItem: async function (filePath, itemFlags = [1, 2, 3, 5, 6, 7], firstLine = 0, lastLine = 688) {
        let line;
        let itemParams;
        do {
            const randomLine = getRandomIntervalNumber(firstLine, lastLine);
            line = await nthline(randomLine, filePath);
            itemParams = line.split(',');
        } while (!itemFlags.includes(itemParams[4]) && !itemParams[2].split(' ').includes('Carta')); // Item is doesn't belong to the flagged items and is not a mail card

        return itemParams[1];
    }
}