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
    getRandomPokemon: async function(filePath, min = 0, max = 994) {
        const randomLine = Math.floor((Math.random() * (max - min + 1) + min));
        nthline(randomLine ,filePath)
            .then(function(line) {
                return line.split // TO DO
            })
    }
}