// Expresión Digital - Diseño Digital - UDD - 2016
// Javiera Ramírez
// s04c01

/* Una vez que corra el programa se verán una serie de círculos
de diferentes colores que con transparencias forman un patrón.*/

import processing.pdf.*;

void setup () {
  size (1024, 768);  // Tamaño de canvas de 1200 px de ancho por
                     // 800 de alto
  colorMode(HSB, 360, 100, 100); // Modo de color hsb en ves de rgb
  int blanco = color(172, 1, 99); // Variable de color blanco
  background (blanco);  // se declara que el fondo del canvas es blanco
}

void draw() {
  beginRecord(PDF, "s04c01Javiera_###.pdf");
  int morado = color(323, 83, 49); // Variable de color morado oscuro
  int celeste = color(172, 75, 85); // variable de color celeste claro
  int morado2 = color(335, 88, 69); // Variable de color morado claro
  int celeste2 = color(179, 75, 85); // variable de color celeste oscuro
  int blanco = color(172, 1, 99); // variable de color blanco
  
  noLoop(); // El programa corre solo una vez, por lo que se crea una
            // imágen fija

  for (int x = 50; x <= width; x += 100) {
    for (int y = 20; y <= height; y += 40) { // círculos celestes con borde morados
      strokeWeight(25); // Se declara que el ancho de la figura es de 25 px
      stroke(morado, 200); // Se declara que el color del borde de la 
                           // figura es morado oscuro con transparencia
      fill(celeste, 200); // Se declara que el fondo de la figura es celeste claro
      ellipse(x, y*2, 60, 60); // Se crean las elipses de 60 px de diámetro
    }
  }

  for (int x = 0; x <= width; x += 100) {
    for (int y = 0; y <= height; y += 40) { // círculos morados con bordes celestes
      strokeWeight(25); // Se declara que el ancho de la figura es de 25 px
      stroke(celeste2, 150); // Se declara que el borde de la figura es celeste
                             // oscuro con transparencia
      fill(morado2, 200); // Se declara que el fondo de la imágen es morado
                          // calro con un poco de transparencia
      ellipse(x, y*2, 60, 60); // Se crean los círculos
    }
  }

  for (int x = 0; x <= width; x += 50) {
    for (int y = 20; y <= height; y += 40) {
      noStroke(); // Se declara que la figura no tiene borde
      fill(blanco, 100); // Se declara que la figura es blanca con transparencia
      ellipse(x, y, 40, 40); // Se crean los círculos de 40 px de diámetro
    }
  }
}

void keyPressed(){
  if(key == 's') {
    saveFrame("s04c00Javiera_###.pdf");
  }
}