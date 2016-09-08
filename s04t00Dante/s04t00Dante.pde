// Expresión Digital II - Diseño Digital - UDD - 2016
// Dante Crovetto
// s04t00Dante

/*
Una vez que corre el programa se dibuarán elipses en cada cruce de una grilla de nueve de ancho y siete de alto equidistantes entre sí, con un diámetro igual a un décimo del lado más pequeño del canvas.
 En el caso de que ambos lados del canvas sean iguales se utilizará el ancho del canvas.
 */


void setup() {                                         // Función que se ejecuta al principio una sola vez

  size(500, 500);                                    // Se crea un canvas de medidas 500x500 px
  background (#AAAAAA);                                // Se pone un fonde de color gris
  ellipseMode(CENTER);                             // A partir de ahora todas las elipses se dibujarán desde el centro
}

void draw() {                                          // Función que se ejecuta infinitas veces mientras el programa funciona
  strokeWeight(1);                                     // El grosor de las líneas será de 1px desde ahora
  int diametro =0;                                     // Se declara una variable "diámetro"
  if (width>=height) {                                 // Si el ancho es mayor o igual al alto que ocurra lo siguiente
    diametro=height/10;                                // la variable "diámetro" pasa a ser igual al alto del canvas dividido en 10
  } else {                                             // Si no ocurre la condición anterior, se ejecutará lo siguiente
    diametro=width/10;                                 // la variable "diametro" pasa a ser igual al ancho del canvas dividido en 10
  }


  for (int x = 0; x <= width; x += width/8) {          // Minetras la nueva variable x sea menor o igual que el ancho del canvas, se ejecutará el código de abajo e irá sumando el valor resultante del ancho del canvas dividido por ocho cada vez.
    for (int y = 0; y <= height; y += height/6) {      // Minetras la nueva variable y sea menor o igual que el alto del canvas, se ejecutará el código de abajo e irá sumando el valor resultante del alto del canvas dividido en seis cada vez.
      ellipse(x, y, diametro, diametro);               // Se dibujará una elipse en las coordenadas x,y creadas anteriormente, con un diámetro igual a un décimo del lado más pequeño del canvas.
                                                       // En el caso de que ambos lados del canvas sean iguales se utilizará el ancho del canvas.
    }
  }
}