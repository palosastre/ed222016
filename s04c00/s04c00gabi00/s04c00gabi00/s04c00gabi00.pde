//Expresión Digital - Diseño Digital II - UDD - 2016
//Gabriela Navarro Risopatrón
//s04c00gabi00

/* En este código se verá una serie de triángulos de forma ordenada color turquesa.
Estos triángulos partirán con una opacidad de 5 ya medida que uno aprete la tecla "r" la opacidad ira cambiando.
Por otro lado, también habrán círculos, de diferentes tamañanos, esto se logra mediante el random*/


import processing.pdf.*; //designa que se guardará como pdf
int x = 0;    //declaro variable x
int y= 0;        //declaro variable y
int turquesa = color(65,225,209);      //declaro variable color
int i = 0;     //declaro variable i

 void setup(){
   
  colorMode(HSB, 360, 100, 100);    //modo de color HSB
  
  size(400,500);    // tamaño dado al canvas
  
  background(360);    // Color de fondo elegido, en este caso será blanco
 }

 
void draw(){
  beginRecord(PDF,"s04c00gabi.pdf");    //manera de guardar en pdf
  
  strokeWeight(random(1,36));        // rango de diferentes grososres para los círculos
  
  for (int i = 0; i < 400; i ++){    // for loop para i
    
     stroke(108, random(100), random(100));    //uno de los strokes es de color rosado
     
    point(i*random(0, width), i*random(0, height)); 
    
    x = x+5;
    
    stroke(60, random(65), random(96),80);    //uno de los strokes es de color verde
    
    fill(304, 65, 96, 45); // color de relleno
    
    ellipse(i/5*random(0,width),i/5*random(0,width),10,10); // creo círculo 1
  

}

     
for(int y = -30; y <= height; y += 40){ // for loop para eje y
  
  for(int x = -30; x <= width; x += 50){    // for loop para eje x
    
  fill(turquesa, 5);      // color de relleno de los triángulos turquesa, con apacidad 30
  
  triangle(x, y, x-30, y+90, x+30, y+90);   // creo triángulo 1 que se repite
  
  stroke(136, 132);     // El color elegido para los stroke es un gris, con opacidad de 132
  
  strokeWeight(2);      //El grosor del stroke vendría siendo de 2
  }
}

noLoop();
endRecord();
}
   
void keyPressed(){
  if( key == 'r' ) {
    redraw();
  }else if (key == 'e' ) {
    saveFrame("file/s04c00gabi###.pdf");{
      exit();
  }
}
}
 

 

   