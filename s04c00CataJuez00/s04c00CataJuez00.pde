import processing.pdf.*;


//Expresión Digital - Diseño Digital - UDD - 2016
//Catalina Juez
//s04c00

/*
En esta composicion estara compuesta por colores frios, principalmente con 
 circulos y cuadrados que se superponen, lo cual notamos por el uso de opacidad.
 También el uso de multiples puntos nois da una textura diferente en nuestra 
 composición. Ademas es usado el "if", para definir cuando pasara a ser random 
 el grosor de la linea. 
 */


color color1; // declaramos el nombre de nuestro primer color
color color2; // declaramos el nombre de nuestro segundo color
color color3; // declaramos el nombre de nuestro tercer color

int n= 0;  // declaramos nuestro primer balor "int", como n=0

void setup() {
  println("certamen01"); 

  color1= color(132, 87, 232, 70); // asignamos nuestro valor para nuestro primer color
  color2= color(78, 90, 229, 50);  // asignamos nuestro segundo valor para nuestro color2
  color3= color(78, 90, 229, 20); // asignamos nuestro tercer valor para nuestro tercer color

  colorMode(HSB, 360, 100, 100); // cambiamos el formato de color a HSB

  size(1200, 1500);  // tamaño de nuestra mesa de trabajo
  
}


void draw() {
  beginRecord(PDF, "s04c00CataJuez###.pdf");
  rectMode(CENTER); // nuestros "rect", osea rectangulos estaran centrados y no puestos desde una esquina
  background(n); // color de fondo
  frameRate(0);
  for (int x = 0; x < height; x= x+5) {
    float l = (random (2, 15)); // variar el valor "l" de 2 a 15

    strokeWeight(6); // el grosor de la linea sera 6
    stroke(color2);   // usamos el color 2
    if (x < 40) {  // cuando x es menos de 50
      strokeWeight(l); // cambia el grosor de la linea al random "l"
    }
    line(1, x*12, width, x*12); // esto corespondo el largo y posicion que tendra nuestra linea
  }


  for (int x = 0; x <  width; x = x+5) {
    for (int y = 0; y <height; y = y+5) {
      strokeWeight(8); // grosor de nuestro punto
      stroke (color3); // el color que tendra nuestro punto
      point(x, y); // la posicion que estos puntos tendran, edsto le dara un textura diferente a nuestra compisicion
    }
  }

  for (int x=0; x<= width; x += 20) {
    for (int y = 0; y<= height; y += 20) {
      float a = (random (2, 10)); 

      noStroke ();// nada que se encuentre bajo este codigo, tendra lineas
      fill(color2); // el relleno de esta figura sera nuestro color2
      rect (x*3, y*3, a*3, a*3);  // asignamos nuestro la posicion y tamaño de nuestro objeto, el tamaño variara debido que usamos el random para definir su porte

      fill(color3); // relleno con el color 3
      rect (x*3, y*3, a*6, a*6);  // // asignamos nuestro la posicion y tamaño de nuestro objeto, el tamaño variara debido que usamos el random para definir su porte

      fill(color1); // relleno con el color1
      rect (x*3, y*3, a, a); // asignamos nuestro la posicion y tamaño de nuestro cuadrado, el tamaño variara debido que usamos el random para definir su porte

      fill(color3); // relleno con el color3
      ellipse (x*3, y*3, a*6, a*6);  // asignamos nuestro la posicion y tamaño de nuestra elipse, el tamaño variara debido que usamos el random para definir su porte

      fill(color3); // relleno con el color3
      ellipse (x*2, y*2, 100, 100); // aca varia nuestra poscicon de nuestra ellipse, ya no es x*3 sino x*2, lo que hara que estos circulos se encuentren a otra distancia, ademas de  que no varian su tamañan ya que este es siempre 100
    }
  }
  if (key == 'a') {
    saveFrame("s04c00CataJuez00.pdf");
    exit();
  }
  noLoop();
  endRecord();
}