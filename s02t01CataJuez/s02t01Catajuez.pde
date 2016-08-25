//Expresión Digital - Diseño Digital - UDD - 2016
//Catalina Juez
//s02t01

color color1; // nombrar a nuestro primer color, el cual seria: "color1"
color color2; // nombrar a nuestro segundo color, el cual seria: "color2"
int b= 255; //primera variable que hace referencia al color blanco
int n= 0; //segunda variable que hace referencia al negro

void setup() {
  color1= color(132, 87, 232); // llamamos a nuestro color y le damos el valor que tendra
  color2= color(78, 9, 229); // llamamos a nuestro segundo color y le damos otro valor
  size(1024, 768); //tamaño de nuestra composicion
}

void draw() {
  frameRate(0); //cantidad de frames por segundos
  background(b); // fondo de color blanco
  for (int x=0; x<=width; x += 20) {
    for (int y = 0; y<= height; y+=20) {
      float a = (random (2, 8)); // el float "a" varia de 2 a 8

      strokeWeight (a); // el grosor de las lineas varia de 2 a 8 (co aaparece en el float a)

      stroke (n); // la linea de la ellipse de abajo sera de color negro
      fill(color2); //el color de la ellipse sera nuesta variable color llamada "colo2"
      ellipse (x*3, y*3, 50, 50); //los primeros dos valores corresponden a la ubicacion de nuestro objeto en relación al eje "x" e "y", y 50 equivale al diametro que tendra este circulo

      stroke (b); // el color de esta linea sera de negro (segun la variable descrita emn un principio de este codigo)
      fill(color1); // el relleno de esta ellipse correspondera al color1
      ellipse (x*3, y*3, 30, 30); ////los primeros dos valores corresponden a la ubicacion de nuestro objeto en relación al eje "x" e "y", y 30 equivale al diametro que tendra este circulo


      noStroke();// el o los siguientes objetos que se encuentren bajo este codigo no tendran linea en su contorno
      fill(0, 0, 150, 50); // el o los siguientes objetos que se encuentren bajo esta linea de codigo tendran dicho color ademas de una transparencia del 50%
      rect (x*2, y*2, 55, 55); // la distancia en que se encuentran sus posiciones de acuerdo al eje "x" e "y", es menor a los demas codigos, ademas que el tamaño es lo suficiente mente grande com o para que al final todos estos cuadrados se superponga
    }
  }
}