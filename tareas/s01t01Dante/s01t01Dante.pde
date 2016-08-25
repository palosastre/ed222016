//Expresión Digital - Diseño Digital - UDD - 2016
//Dante Crovetto
//s01t01Dante /semana 1 ejercicio 1 nombre
/* Carita feliz amarilla con contorno blanco, ojos rojos sin contorno y sonrisa negra. En el centro de la imagen, y detras del resto de las figuras hay un círculo de color amarillo con bordes gruesos de color blanco, sobre este hay dos óvalos hubicados sobre la mitad del canvas (100, default)
y distanciados entre si en el eje Y por 30px. Ambos óvalos son de color rojo y no tienen contorno. Y por último habrá un arco que se dibujará bajo la mitad del alto del canvas, y en el centro del eje Y. El arco no tiene relleno y tiene un contorno negro */

int centerPoint=50;   //Variable centerPoint es 50
int diametro=90; //diametro de la figura = 90
int colorAmarillo= color(255, 255, 0);  //variable del color amarillo
int colorRojo= color(255,0,0);  //variable del color rojo
int colorBlanco= color(255,255,255); //variable del color Blanco
int colorNegro= color(0,0,0);  //variable del color negro
int posicionX= 55;  //variable posición eje X es 55
int diametro2= 60; //variable radio1 es 50

ellipseMode(CENTER);  //las elipces se dibujarán desde el centro desde ahora en adelante
stroke(colorBlanco);  // el contorno de la figura será negro
strokeWeight(7);   //el grosor del contorno de la figura es 7px
fill(colorAmarillo);   //el relleno de la figura será amarillo
ellipse(centerPoint, centerPoint, diametro, diametro);   //dibujo de una elipce, en el centro del canvas con un diámetro de 90 px de color amarillo, y contornos blancos de 7px

diametro=20;  // variación del diámetro a 20
noStroke();    // las figuras desde ahora no tendrán contorno
fill(colorRojo);  // el relleno de la figura será rojo
ellipse((centerPoint - 15), (centerPoint - 10), (diametro - 10), diametro);  //dibujo de una elipce, hubicado sobre la mitad del alto del canvas (100, default) y distanciado del eje Y por 15 px a la izquierda. Es de color rojo y no tiene contorno 
ellipse((centerPoint + 15), (centerPoint - 10), (diametro - 10), diametro);  //dibujo de una elipce, hubicado sobre la mitad del alto del canvas (100, default) y distanciado del eje Y por 15 px a la derecha. Es de color rojo y no tiene contorno 

noFill(); //desde ahora las figuras no tendrán relleno

stroke(colorNegro);  //el color del contorno es negro

arc(centerPoint, posicionX, diametro2, diametro2, 0, PI); //dibujo del arco de la mitad inferior de una elipse hubicada en el centro del canvas de diámetro 60px, sin relleno y con un contorno de color negro de 7px 