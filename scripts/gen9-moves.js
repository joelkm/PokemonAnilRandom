const fs = require('fs');

const filePaths = require('./utils/fileHandler');

async function gen9Update() {

    async function updateMoves() {

        let newGenMoves = [
            '645,FIEBREDORADA,Fiebre dorada,03F,120,STEEL,Special,100,5,100,04,0,bef,"Fiebre dorada causa daño, pero reduce el ataque especial del usuario. En combates dobles golpea a ambos oponentes."',
            '646,TRUCOFLORAL,Truco floral,0A0,70,GRASS,Physical,0,10,100,00,0,bef,"Truco floral causa daño y no tiene ningún efecto secundario. Este ataque nunca falla, ignorando los cambios de precisión del usuario y evasión del objetivo. Además, siempre acierta un golpe crítico al objetivo."',
            '647,ENVITEACUATICO,Envite acuático,0FB,120,WATER,Physical,100,10,100,00,0,abef,"Envite acuático causa daño, pero el usuario recibe un daño de retroceso igual a 1/3 del daño causado al oponente."',
            '648,CANTOARDIENTE,Canto ardiente,020,80,FIRE,Special,100,10,100,00,0,befk,"Canto ardiente es un movimiento de sonido que causa daño y siempre aumenta un nivel el ataque especial del usuario."',
            '649,GENUFENDIENTE,Genufendiente,000,85,DARK,Physical,0,10,0,00,0,abef,"Genufendiente causa daño y no tiene ningún efecto secundario. Este ataque nunca falla, ignorando cambios en la precisión del usuario y la evasión del objetivo."',
            '650,ASALTOESPADON,Asalto Espadón,03B,120,DRAGON,Physical,100,5,100,00,0,abef,"Asalto espadón causa daño y no tiene ningún efecto secundario. Sin embargo, reduce el ataque y la defensa del usuario."',
            '651,MARTILLOCOLOSAL,Martillo colosal,03B,160,STEEL,Physical,100,5,100,00,0,bef,"Martillo colosal causa daño y no tiene ningún efecto secundario. Sin embargo, reduce el ataque y la defensa del usuario."'
        ];

        return await new Promise(function (resolve) {
            fs.readFile(filePaths.moves, 'utf-8', async function (err, data) {
                let lines = data.split('\n');
                for (let index = 0; index < lines.length; index++) {
                    let moveParams = lines[index].split(',');
                    if (moveParams[1] == 'AIRSLASH') {
                        moveParams[3] = '00F';
                        moveParams[9] = '20';
                        lines[index] = moveParams.join(',');
                    }
                }

                if (!lines.includes(newGenMoves[0])) {
                    lines = lines.concat(newGenMoves);
                }

                let resultFile = lines.join('\n');
                await fs.writeFile(filePaths.moves, resultFile, 'utf-8', function () { })

                console.log('Movimientos: Actualizados con exito');
                resolve();
            })
        })
    }


    await updateMoves();
}
gen9Update();

while (true) {
    var a = 1;
    // ! keep the app running
}