//Expresión Digital - Diseño Digital - UDD - 2016
// M. Elena Errázuriz
//s01t01elenaerrazuriz

/* El código es un ejercicio del tratamiento de colores, fill, no fill y grosor
 de línea para las figuras */

int x = 20;                    // variable entera para x
int y = 40;                    // variable entera para y
int r = 54;                    // variable de color
int g = 215;                   // variable de color
int b = 183;                   // variable de color
int r1 = 27;                   // variable de color
int g1 = 163;                  // variable de color
int b1 = 156;                  // variable de color

ellipse(x*4, y, x*4, x*4);     //elipse más grande con relleno blanco
fill(r, g, b);                 //turquoise (color claro)
ellipse(x*4, y, y, y);         //elipse mediana con relleno turquesa
fill(r1, g1, b1);              //light sea green (color oscuro)
ellipse(x*4, y, x, x);         //elipse del centro color  sea green

line(x*0, x*5, x*3, x*3);      //línea delgada que nace de la esquina inderior izquierda del canvas

rect(x, y, x, x);              //cuadrado con relleno sea green. Como la función de color está arriba y no
                               //hay cambios determinados por una nueva, queda con el último color dado.           

strokeWeight(5);               //tamaño de los pixeles ocupados por el punto
point(x*3, y*2);               //punto bajo el circulo

noFill();                      //función para indicar que la figura bajo ésta no tiene relleno       
strokeWeight(3);               //determinar un grosor de 3px a la línea 
rect(30, 50, x, x);            //cuadrado sin rellemo que nace del centro del otro.

strokeWeight(3);               //determinar un grosor de 3px a la línea 
line(x*0, x*2, x*3, x*0);      //línea negra en la esquina superir izquierda

//noFill();                    //como la función esta arriba, no se tiene que repetir, toma TODO lo que está abajo
strokeWeight(2);               //determina un grosor de 2px a la línea
stroke(r, g, b);               //función para darle color a una línea
ellipse(x*4, y, x*3, x*3);     //elipse sin rellemo con el stroke de color turquesa