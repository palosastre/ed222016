//Expresión Digital - Diseño Digital - UDD - 2016
// M. Elena Errázuriz
//s04t00elenaerrazuriz

/* Esta código muestra un canvas que sin importar sus medidas en x o y, tendrá nueve
 líneas verticales por siete líneas horizontales de figuras, que adaptan su tamaño 
 dependiando del tamaño de la grilla*/

size(470, 350);                                     //Tamaño del canvas
background(255);                                    //Fondo blanco


int a;                                              //Declarar variable a

if (width >= height) {                              //Iniciar condiciones de uso de 'a'
  a = height/10;                                    //Primer resultado para la condición
} else {
  a = width/10;                                     //Si no, que ocurra esta otra acción
}


for (int x = 0; x <= width; x += width/8) {         //Determinar las 9 figuras en el eje x
  for (int y = 0; y <= height; y += height/6) {     //Determinar las 7 figuras en el eje y

    fill(54, 215, 183);                             //Relleno de figura turquesa
    stroke(27, 163, 156);                           //Color de la línes sea green
    strokeWeight(5);                                //Tamaño de la línea, 5 px
    ellipse(x, y, a, a);                            //La orden de dibujar círculos de 30 px de diámetro
  }
}