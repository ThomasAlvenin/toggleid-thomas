# toggleid-thomas
Script básico para enseñar IDs por tecla. | FiveM

FAQ
---
¿Cómo puedo cambiar la altura del texto?
En la línea 4 puedes cambiar la altura entre el ID y el modelo de la cabeza de tu ped. (local displayIDHeight = 1.5)

¿Cómo puedo cambiar el color del texto por defecto?
En la línea 6,7 y 8 podras cambiar el color RGB del texto (local red = 255, local green = 255, local blue = 255)

¿Cómo puedo cambiar el color del texto al hablar?
Igual que al cambiar el color de texto por defecto, pero tendrás que hacerlo en las líneas 54, 55, 56, 70, 71 y 72.

¿Cómo puedo cambiar la tecla para mostrar las IDs?
Tendras que buscar en las líneas 39 y 84 el texto de IsControlPressed(1, 48), el numero 48 tendrás que cambiarlo por el numero de tecla que quieras.
Puedes buscar los numeros de teclas en la documentacion de FiveM: https://docs.fivem.net/docs/game-references/controls/
