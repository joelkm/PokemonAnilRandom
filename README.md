# Pokemon Anil Modpack

This mod pack is not available for the English version yet, this is the tutorial for the Spanish version. To see an explanation on all of this and how I did it, click [here](/Explanation).

## Introducción 


## Cómo jugar Pokemon Añil Random

Vamos al lío.

### Prerrequisitos

- Windows (cualquier versión)
- Pokémon Añil (Recomendo hacer una copia de la carpeta del juego original y hacer todas las operaciones ahí, de esta forma conservaras tu juego sin randomizar).
- RPGMakerXP (Es con lo que esta hecho el juego original, se necesita para el paso final. Puede encontrar steam keys en Google por $4, y, aunque no soy fan de la piratería, seguro que también lo puedes encontrar gratis en algún sitio).
- Node.js (Motor de ejecución, explicación en el apartado de "Preparación"
- Las suficientes ganas de jugar al un Random como para fíarte de un desconocido en internet.

#### Preparación

1. Instala Node.js: Es el motor de ejecución de los scripts, para descargarlo e instalarlo puedes seguir este [tutorial](https://www.youtube.com/watch?v=0Tdjselvxq0&ab_channel=TareaCompleto)
2. Configura Node.js: Declarar variables de entorno para ejecución. En resumen, [sigue estas instrucciones](https://bertofern.wordpress.com/2019/01/08/solucion-node-js-npm-no-reconocido-como-comando-interno-o-externo/)
3. Descarga el .zip del Modpack, lo puedes encontrar [aquí]()

En este punto ya esta todo listo para randomizar el juego. Sigue los pasos a partir de aqui cada vez que quieras randomizar una run nueva. OJO: Si quieres hacer una nueva run, deberas repetir el proceso (punto 4 en adelante) en una nueva carpeta copia del juego original.

4. Mueve el archivo a la carpeta del Pokémon Añil y descomprimelo. Quedará algo así
  img///
5. Renombra la carpeta a algo corto como "Custom"
6. Abre la terminal de comandos de tu pc y ubicate en la carpeta "Custom" dentro de la carpeta del juego
7. Escribe
> `npm run randomize`
y espera a que acabe el proceso. Una vez acabado puedes cerrar la terminal.
8. Entra en la carpeta "Custom" y mueve el archivo "Game.rxproj" a la carpeta del juego y abrelo. Se te abrirá RPGMaker y verás una pantalla como esta:
9. Da click en el triángulo verde del menú. Se abrira una nueva pestaña en negro, presiona repetidamente la tecla Ctrl hasta que cambie el nombre de la pestaña a algo como "Compilando" o "Procesando datos de ..." y espera. El nombre de la pestaña irá cambiando repetidamente hasta que finalice el proceso. Una vez completado se abrirá el juego automáticamente con todo randomizado.





## Explanation
