// Expresión Digital II - Diseño Digital - UDD - 2016
// Paulina Descouvieres
// s05t00paly

/*
Al ejecutar el programa se verá una grilla de elipses, 9 a lo ancho y 7 a lo alto,
cuyo diámetro equivale a 1/10 del ancho del canvas.
En caso de que las dimensiones del canvas no sean iguales, se tomará el
lado más pequeño.
Las elipses serán azules marino con un borde rosado de 3px.
*/

//Declarar colores usados
  color a = color(0, 0, 44);
  color r = color(190, 42, 89);
  color w = color(255);

void setup(){
  
//Tamaño del canvas
  size(500, 500);
  
//Pintar el fondo
  background(w);
}

void draw() {

//Declarar variables
  int diam;
  int x;
  int y;
  
//Función 'if' que determina el diámetro de la elipse
  if(width <= height){
    diam = width/10;
    }else{
      diam = height/10;
    }

//Doble for loop que determina la posición de las elipses dentro de la grilla
  for(x = 0; x <= width; x += width/8){
    for(y = 0; y <= height; y += height/6){

//Elipse azul marino con borde rosado de 3px
      strokeWeight(3);
      stroke (r);
      fill (a);
      ellipse(x, y, diam, diam);    
      
    }
  } 
  
//Detener el loop
  noLoop();
}

void keyPressed() {
 if (key == 'q'){
   exit();
 }
}