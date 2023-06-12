const nthline = require('nthline');

module.exports = {
    getRandomMove: async function(filePath, min = 0, max = 643) {
        const randomLine = Math.floor((Math.random() * (max - min + 1) + min));
        const valueResult = await nthline(randomLine ,filePath)
        return valueResult.split(',')[1];
    },
    getRandomAbility: async function(filePath, min = 0, max = 204) {
        const randomLine = Math.floor((Math.random() * (max - min + 1) + min));
        const valueResult = await nthline(randomLine ,filePath);
        return valueResult.split(',')[1];
    },
    getRandomPokemon: async function(pokemon) {
        const randomPokemonNumber = Math.floor((Math.random() * (pokemon.length -1 - 0 + 1) + 0));
        return pokemon[randomPokemonNumber];
    },
    getRandomItem: async function(filePath, min = 0, max = 688) {
        const randomLine = Math.floor((Math.random() * (max - min + 1) + min));
        const valueResult = await nthline(randomLine ,filePath)
        return valueResult.split(',')[1];
    }
}