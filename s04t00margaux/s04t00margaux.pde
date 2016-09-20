//Expresión Digital - Diseño Digital - UDD - 2016
//Margaux Leroy
//s04t00margaux01

/*
El código representa une grilla de 9 filas de elipses en el 
ancho y de 7 filas en el alto. 
El tamaño puede cambiar, los filas serían las mismas.
*/

//Declaración de variables

int a = 8;               //variable para definir las filas de 9 en el ancho
int b = 6;               //variable para definir las filas de 7 en el alto
int c = 15;              //variable para definir el tamaño de los ellipses

//Anunciación de los predeterminados

void setup(){
  size(250, 250);       //color del fundo
  background(250);      //tamaño del canvas
}

//Función para llamar las formas

void draw(){
  for (int x = 0; x < height; x += height/a) {            //las elipses están dispuestos en el ancho
    for (int y = 0; y < width; y += width/b) {            //las elipses están dispuestos en el alto
      fill(#dd4242);        //fundo de la elipse 'rojo'
      stroke(200);          //color del contorno 'gris'
      strokeWeight(5);      //espeso del contorno de 5px
      ellipse(x, y, c, c);  //ubicación de las elipses
    }
  }
}