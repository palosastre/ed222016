// Expresión Digital II - Diseño Digital - UDD - 2016
// Ricardo Vidal Lynch
// s04c00lynch00

int lin2 = width/6; // error extraño, division mal hecha
int colT[] = {0,100,200}; // array para los colores del patron de triangulos
int colRay = 42; //variable para degradado colores de linea de encima
int A = 0; // variables para tener estados de presion
int Q = 0; // de las teclas a y q
int click = 0; // variable estado del click
import processing.pdf.*;  // inicializar funcion pdf

void setup() { 
  size(1200,1000);
  background(0);
}

void draw() {
  int lin = width/6; // definido aca por error extraño que me entrega resultado 16
  println(lin2); // debug del error anterior
  int rayL[] =  {lin,lin*2,lin*3,lin*4,lin*5}; // definido aca para poder tomar valos de lin
  // array que divide la linea en 5 partes exactas
  beginRecord(PDF, "s04c00LYNCH01.pdf"); // begin record
  
  background(0); 
  for (int i=0; i<width; i+=10) {
    for (int j =0; j<height; j+=10) {
      noStroke();
      //fill(i/2, j/2, 255);    // doble for loop que rellena el fondo de cuadrados tipo
      if(click ==0){            // hormiguitas de tele de 2 opciones de color, relacionado al click
        fill(random(255));
      } else if(click ==1){
        float colF = random(255);
        fill(colF,colF,255);
      }
      rect(i, j, random(10,20),random(10,20));
      
    }
  }



  for (int i =0; i<width; i+=40) {
    for (int j =0; j<height; j+=40) {  // este otro doble for dibuja el patron 
      patron(i, j);                    // de triangulos, definido en una funcion
    }                                  // en la otra pestaña
  }
  /* aca se dibuja la linea en degrade que va encima */
  strokeWeight(50);
  stroke(colRay*6, Q, colRay*6);
  line(0, mouseY/2.5, rayL[0], mouseY*1.5);
  stroke(colRay*5, Q, colRay*5);
  line(rayL[0], mouseY*1.5, rayL[1], mouseY/2);
  stroke(colRay*4, Q, colRay*4);
  line(rayL[1], mouseY/2, rayL[2], mouseY);
  stroke(colRay*3, Q, colRay*3);
  line(rayL[2], mouseY, rayL[3], mouseY/1.5);
  stroke(colRay*2, Q, colRay*2);
  line(rayL[3], mouseY/1.5, rayL[4], mouseY*2);
  stroke(colRay, Q, colRay);
  line(rayL[4], mouseY*2, width, mouseY/2.5);
  
  /* el color esta definido por el array */
  
  noLoop();
  endRecord();
}

/* aca estan todas las funciones de teclado, varias letras */
void keyPressed(){
  if(key == 'a'){
    if(A == 0){  // esto lo uso para generar un estado de variable
      A=1;       // que cambie con la presion de la tecla
      redraw();
  } else {
    A=0;
    redraw();
  }
  }
  
  if(key == 'q'){
    if(Q ==0){
      Q=255;
      redraw();
  } else {
    Q = 0;
    redraw();
  }
}
if(key=='p'){
 redraw();
}
}

/*  evento de mouse */
void mousePressed(){
  if (click == 0) {   
    click = 1;
    redraw();
  } else {
    click = 0;
    redraw();
  }
}