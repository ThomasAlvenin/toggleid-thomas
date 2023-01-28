# toggleid-thomas
Script básico para enseñar IDs por tecla. | FiveM

FAQ (Preguntas frecuentes)
---
¿Cómo puedo cambiar la altura del texto?
En la línea de código "local displayIDHeight = 1.5", puede cambiar el valor "1.5" por el valor de altura deseado.

¿Cómo puedo cambiar el color del texto por defecto?
En las líneas de código "local red = 255," "local green = 255," y "local blue = 255", puede cambiar los valores RGB para el color del texto deseado.

¿Cómo puedo cambiar el color del texto al hablar?
En las líneas de código "local talkRed = 255," "local talkGreen = 255," y "local talkBlue = 255", puede cambiar los valores RGB para el color del texto al hablar deseado.

¿Cómo puedo cambiar la tecla para mostrar las IDs?
En las líneas de código "if IsControlPressed(1, 48) then" y "if IsControlJustPressed(1, 48) then", cambie el número "48" por el número de la tecla deseada. Puede encontrar los números de teclas en la documentación de FiveM: https://docs.fivem.net/docs/game-references/controls/
