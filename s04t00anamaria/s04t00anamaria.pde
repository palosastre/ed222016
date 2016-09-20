//Expresión Digital 2 - Diseño Digital - UDD - 2016
//Ana María Ortiz
//s04t00anamaria

/*en una grilla proporcinal de a cuerdo al tamaño del canvas, se dibujarán elipses 
*/

void setup() {
  size(300, 300);                                   //tamaño del canvas
  background(255);                                  //color de fondo
}

void draw() {
  color a= color(251, 234, 46);                     //color amarillo
  color c= color(46,215,251);                       //color calipso
  int diametro;                                     //variable diametro
  if (width >= height) {                            //si el ancho es mayor o igual al ancho, el diametro va a ser el ancho dividido en 10
    diametro = width/10;
  } else {
    diametro = height/10;                           //si no se cumple la condicion anterior, el diametro va a ser el alto dividido en 10
  }

  for (int x = 0; x <= width; x += width/8) {       //si x es menor o igual que el ancho del canvas, se le sumará el ancho dividido en 8
    for (int y = 0; y <= height; y += height/6) {   //si y es menor o igual que el largo del canavs, se le sumará el alto dividido en 6

      fill(a);                                      //relleno color amarillo
      strokeWeight (2);                             //ancho del stroke
      stroke(c);                                    //color stroke
      ellipse (x, y, diametro, diametro);           //elipse 
    }
  }
}