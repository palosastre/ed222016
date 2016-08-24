// Expresión Digital - Diseño Digital - UDD - 2016
// Isidora Ordoñez.
// s02t01isi

/*
creo patron a travéz de un for dentro de un void draw, el cual esta compuesto de ellipses
y cuadrados de tamaños y opacidades random pero lugar, color y stroke fijos.
*/





//for (int i=0; i < 100; i++)  
// crea una variable i, mientras i sea menor a cero, sumale uno.

float posX;          //creo variable "posX".
float posY;          //creo variable "posY".
float posZ;          //creo variable "posZ".
float diametro;      //creo variable "diametro".
float opa;           //creo una variable que será usada para dar opacidad.


void setup() {
  
  size (500, 500);            //tamaño canvas.
  posX = 1;                   //asino valor 1 a variable "posX".
  posY = 1;                   //asino valor 1 a variable "posY".
  posZ = 2;                   //asino valor 2 a variable "posz".
  
  
}

void draw() {

  frameRate(0);                         //frame rate 0 para poder sacar imagen estatica.
  background (255, 255, 255);           //color canvas.
 

  for (int i = 0; i < width; i += 20) {         // mientras i sea menor al ancho de mi canvas.
                                                // en cada ciclo agrega 20 a i, va de 0,20,40,60.
    for ( int x = 0; x < height; x += 20) {     //+=20 son los pixeles de separacion. 
    
    
      /*ellipse*/
      opa= random (100, 255);                                       //asigno valores a opa.
      diametro= random (2, 15);                                     //asigno valor random para la variable diametro.   
      stroke (2);                                                   //linea de contorno de 2 px.
      fill (252, 179, 116, opa);                                    //relleno figura amarillo.
      ellipse ( posX * i + i, posY * x + x, diametro, diametro);    //elipse con posición fija y diametro random.
      
      
      /*Cuadrado*/
      opa= random (90, 200);                                      //asigno nuevo valor a opa.
      diametro= random( 15, 35);                                  //asigno nuevo valor a random a diametro.
      stroke (1);                                                 //linea de contorno de 1 px.
      fill (164, 189, 139, opa);                                  //relleno cuadrado verde.
      rect ( posZ * i + i, posZ * x + x, diametro, diametro);     // cuadrado de posición fija y diametro random.
      
    }
  }
}