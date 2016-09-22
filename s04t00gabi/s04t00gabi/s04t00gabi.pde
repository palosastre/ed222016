//Expresión Digital II - Diseño Digital - UDD - 2016
//Gabriela Navarro Risopatrón
//s04t00gabi

/* Este código mostrará nueve círculos a lo ancho y siete
circulos a lo alto. Con un doble for loop, con un if y un else.
*/

void setup(){
  size(100,100);                                  //Tamaño del canvas
  background(255);                                //Color de fondo del canvas
}

void draw(){
 int circ;                                        //variable circ
 
 if(width >= height) {                            //inicia condición
   circ= height/10;                               //resultado condicónn (igual ancho/10)
 } else {
   circ = width/10;                               //si no, cumpla esta condición (igual alto/10)  
 }


for(int x = 0; x <= width; x += width/8) {        //for loop para eje x
  for(int y = 0; y <= height; y += height/6) {    //for loop para eje y
    
    fill(127, 255,212);                           //Relleno de la figura (aqua marine)
    stroke(32,178,170);                           //Color del grosor de la línea (light sea green)
    strokeWeight(2);                              //Grosor de la línea (2 pixeles)
    ellipse(x, y, circ, circ);                    //Posición y tamaño de la elipse
  }
  }
}