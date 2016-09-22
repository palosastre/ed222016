// Expresión Digital II - Diseño Digital - UDD - 2016.
// Catalina Ringeling Selman.
// s04t00cringelings

/*
Al correr el programa, se crearán ellipses según una grilla de 9 de ancho y 7 de alto en el canvas.
El diámetro equivaldría a 1/10 en el ancho de este canvas
*/

void setup () {
  // Tamaño de canvas y el color del fondo.
  size(500, 500);
  background(150);
}

void draw() {
  // Declarando variables a usar.
  int diam1 = width/10;
  int diam2 = height/10;
  int x;
  int y;
  
  // Función "for" que determina el tamaño y posición de la ellipse en el canvas
  for (x = 0; x <= width; x += width/8) {
    for  (y = 0; y <= height; y += height/6) {
  strokeWeight(1);
  ellipse(x, y, diam1, diam2);
    }
  }
}