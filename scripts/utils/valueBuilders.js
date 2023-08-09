const { getRandomMove, getRandomAbility } = require('./getRandomProperty');
const filePaths = require('./fileHandler');

module.exports = {
    buildLvlMoveSet: async function (learningLevels) {
        let newValues = '';
        let mandatoryHitMove = true;

        for (let index = 0; index < learningLevels.length; index++) {
            newValues = newValues + learningLevels[index] + ',' + await getRandomMove(filePaths.moves, mandatoryHitMove) + ',';
            if (index == 0) mandatoryHitMove = false;
        }

        newValues = newValues.slice(0, -1);

        return newValues;
    },
    buildEggMoveSet: async function (eggMoves) {
        let newValues = '';

        for (let index = 0; index < eggMoves.length; index++) {
            newValues = newValues + await getRandomMove(filePaths.moves) + ',';
        }

        newValues = newValues.slice(0, -1);

        return newValues;
    },
    buildAbilitySet: async function (values) {
        let newValues = '';

        for (let index = 0; index < values.length; index++) {
            newValues = newValues + await getRandomAbility(filePaths.abilities) + ',';
        }
        newValues = newValues.slice(0, -1);

        return newValues
    },
    buildTmLearnerList: function (pokemonCollection) { // In Random locke, each single pokemon has a 50% chance to learn a TM move
        let learners = '';
        for (let index = 0; index < pokemonCollection.length; index++) {
            if (Math.random() > 0.5) learners = learners + pokemonCollection[index] + ',';
        }
        learners = learners.slice(0, -1);
        return learners;
    }
}