// Expresión Digital II - Diseño Digital - UDD - 2016
// Paulina Descouvieres
// s05t00paly

/*
Al ejecutar el programa se verá una grilla de elipses, 9 a lo ancho y 7 a lo alto,
cuyo diámetro equivale a 1/10 del ancho del canvas.
En caso de que las dimensiones del canvas no sean iguales, se tomará el
lado más pequeño.
Las elipses serán azul marino y rosadas aleatoriamente.
*/

//Declarar colores usados
  color a = color(0, 0, 44);
  color r = color(190, 42, 89);
  color b = color(0);
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
  
//Array para crear un random con azul marino y rosado
  int[] m = {0, 190};
  int[] n = {0, 42};
  int[] o = {44, 89};
  
//Función 'if' que determina el diámetro de la elipse
  if(width <= height){
    diam = width/10;
    }else{
      diam = height/10;
    }

//Doble for loop que determina la posición de las elipses dentro de la grilla
  for(x = 0; x <= width; x += width/8){
    for(y = 0; y <= height; y += height/6){
      
//Random entre azul marino y rosado para rellenar las elipses
    int random = (int) random (2);
    int colorm = m[random];
    int colorn = n[random];
    int coloro = o[random];

//Elipse con borde negro de 3px y color aleatorio entre azul marino y rosado
      strokeWeight(3);
      stroke (b);
      fill (colorm, colorn, coloro);
      ellipse(x, y, diam, diam);          
    }
  } 
  
//Detener el loop
  noLoop();
}

void keyPressed() {
 if (key == 'n'){
   redraw();
 }else if (key == 'q'){
   exit();
 }
}