# Pokemon Anil Modpack

This mod pack is not available for the English version yet, this is the tutorial for the Spanish version. To see an explanation on all of this and how I did it, click [here](/Explanation).

## Introducción
Esto más que un mod son un conjunto de scripts que modifican los archivos del juego base de Pokemon Añil. Solo lo hice para un Random locke con mis amigos y no habia pensado en compartirlo, por lo que el proce-so de instalacion es un pelín tedioso. Aún así siguiendo esta guía lo puede disfrutar cualquiera. Hay bastante trabajo detrás y esto lo hago completamente gratis, así que, si quieres recompensarmelo, seguirme en [Twitter](https://twitter.com/JoelMustDeploy) es más que suficiente.

Hay cosas que se han podido randomizar y otras que no ha habido manera. Un resumen:

Sí randomiza:
- Habilidades de pokemon
- Set de movimientos de pokemon (tanto huevo como nivel)
- Encuentros salvajes
- Drops de pokemon salvajes (Los que tienen)
- Pokemon de entrenadores
- Items de combate en Pokemon de entrenadores
- Megas de entrenadores
- MTs
- Recordadores de movimientos

No randomiza:
- La elección del starter :(
- Raids
- Habilidades de Pokemon Mega
- Items del mundo (Para no cargarme misiones de historia)
- Tutores de movimiento
- Fósiles
- NPCs de intercambio

Otros detalles:
- Todos los entrenadored de más de lvl 36 tienen pokemon completamente evolucionados
- El precio de las balls de captura esta rebalanceado (lo vais a agradecer): Pokeball 200, Greatball 800, Ultraball 1500, Resto 2500.
- La habilidad Superguarda (Wonderguard) está baneada (para que no se abuse más que otra cosa)
- He metido algunos movimientos de Gen 9 que no estaban (Fiebre Dorada, Canto ardiente, Truco floral...), desgraciadamente no tienen animaciones originales y algunos efectos están modificados (Ej: Fiebre dorada baja el SpAt 2 veces en lugar de 1 y Martillo Colosal actúa igual que Fuerza Bruta).
- La MT108 está vacía (No es intencional, la mt original de Metrónomo hace cosas raras y se queda así).

## Cómo jugar Pokemon Añil Random

Vamos al lío.

### Prerrequisitos

- Windows (cualquier versión)
- RPGMakerXP (Es con lo que Eric hace los juegos. No hay que hacer nada complicado, pero se necesita para el paso final. Puedes encontrar steam keys en Google por $4, y, aunque no soy fan de la piratería, seguro que también lo puedes encontrar gratis en algún sitio).
- Node.js (Motor de ejecución, explicación en el apartado de "Preparación")
- Las suficientes ganas de jugar un Random como para fíarte de un desconocido en internet.

#### El juego

1. Descarga el Pokemon Añil Random, lo puedes encontrar [aquí](https://www.mediafire.com/file/ou1dmclcvnnzhmv/PokemonAnilRandom.rar/file)
2. Descomprime el archivo que acabas de descargar y mueve la carpeta resultante a donde quieras tener el juego (tu escritorio, por ejemplo).

Esta carpeta es el juego de Pokemon Añil con todo lo necesario para randomizar. Por defecto, la run de esta carpeta ya está randomizada. Podrías empezar a jugar directamente abriendo el archivo "Game.exe", pero te recomiendo que sigas los pasos siguientes para tener tu propia run random única.

#### Preparación

3. Instala Node.js: Es el motor de ejecución de los scripts, para descargarlo e instalarlo puedes seguir este [tutorial](https://www.youtube.com/watch?v=0Tdjselvxq0&ab_channel=TareaCompleto)
4. Configura Node.js: Declarar variables de entorno para ejecución. En resumen, [sigue estas instrucciones](https://bertofern.wordpress.com/2019/01/08/solucion-node-js-npm-no-reconocido-como-comando-interno-o-externo/)

Esto es para ejecutar los scripts que randomizan el juego, y solo tendras que hacerlo una vez. Cada vez que quieras comenzar una run nueva, deberas repetir el proceso a partir de aquí. 

OJO: Los datos de cada run se guardan en la propia carpeta del juego, por lo que si quieres jugar varias runs diferentes a la vez, deberas repetir el siguiente proceso en carpetas diferentes para no cargarte tus runs.

#### Randomizar

5. Abre la carpeta del juego que has descomprimido en el paso 2 (PokemonAnilRandom). Hay 2 elementos nuevos que no están en el juego original: una carpeta llamada "Custom" y un archivo llamado "Game.rxproj".
![image](https://github.com/joelkm/PokemonAnilModpack/assets/109240974/ce115dfc-ab56-4208-9180-831784965595)
6. Abre la terminal de comandos de tu pc y y usa el comando `cd` para ubicarte en la carpeta "Custom" dentro de la carpeta del juego.
Algunos no estaréis familiarizados con el uso de la terminal asi que vamos a cubrirlo brevemente.
- Puedes abrir la terminal buscando "Terminal" en la barra de busqueda de la tecla Windows.
- Mira este video sobre [como navegar a una carpeta en la terminal](https://www.youtube.com/watch?v=OEhp7WJJKzs&ab_channel=YoAndroide) Suponiendo que tengamos el juego en la carpeta de Descargas, por ejemplo, deberiamos escribir algo como `cd Descargas/PokemonAnil/Custom`.
7. Una vez ubicado en la carpeta "Custom", escribe el comando
`npm run randomize`
y espera a que acabe el proceso. Esto ejecutará los scripts que modifican los archivos del juego. Una vez leas "Juego randomizado con éxito", el proceso habrá acabado y podrás cerrar la terminal.
8. Abre el archivo "Game.rxproj". Se abrirá RPGMaker y tendrás delante una pantalla como esta:
![image](https://github.com/joelkm/PokemonAnilModpack/assets/109240974/a3fff0d9-ccd4-42bd-86a5-e6fddde2577b)
9. Da click en el triángulo verde del menú.
![image](https://github.com/joelkm/PokemonAnilModpack/assets/109240974/b3d0d0be-ec3e-4b79-a300-74da60add3be)
Se abrira una nueva pestaña en negro, presiona repetidamente la tecla Ctrl hasta que cambie el nombre de la pestaña a algo como "Compilando" o "Procesando datos de ..." y espera.
![image](https://github.com/joelkm/PokemonAnilModpack/assets/109240974/0cd9a957-7495-40ea-b24c-ebeef90996af)
Esto lo que hace es recompilar los datos del juego que ya hemos randomizado con los scripts.
El nombre de la pestaña irá cambiando repetidamente hasta que finalice el proceso. Una vez completado se abrirá el juego automáticamente con todo randomizado.

A partir de aqui, ya puedes actuar con normalidad. La proxima vez que quieras jugar, ya podras abrir el juego desde "Game.exe" como siempre.

Se que el proceso es complicado y más de uno tendréis alguna duda. Si es así, podéis escribirme a [Twitter](https://twitter.com/JoelMustDeploy).

Sentíos libres de compartirlo, streamearlo y disfrutarlo sin obligación ninguna, que para eso está (eso sí, si decís que lo he hecho yo tampoco me quejaré).

¿He dicho ya que tengo [Twitter](https://twitter.com/JoelMustDeploy)?

## Explanation
