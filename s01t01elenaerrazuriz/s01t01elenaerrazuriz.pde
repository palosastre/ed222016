//Expresión Digital - Diseño Digital - UDD - 2016
// M. Elena Errázuriz
//s01t01elenaerrazuriz

/* El código es un ejercicio del tratamiento de colores, fill, no fill y grosor
 de línea para las figuras */

int x = 20;                    // variable entera para x
int y = 40;                    // variable entera para y

ellipse(x*4, y, x*4, x*4);     //elipse más grande con relleno blanco
fill(54, 215, 183);            //turquoise (color claro)
ellipse(x*4, y, y, y);         //elipse mediana con relleno turquesa
fill(27, 163, 156);            //light sea green (color oscuro)
ellipse(x*4, y, x, x);

line(x*0, x*5, x*3, x*3);      //línea delgada que nace de la esquina inderior izquierda del canvas

rect(x, y, x, x);              //cuadrado con relleno turquesa. Como la función de color está arriba y no
                               //hay cambios determinados por una nueva, queda con el último color dado.

noFill();                      //función para indicar que la figura bajo ésta no tiene relleno       
strokeWeight(3);               //determinar un grosor de 3px a la línea 
rect(30, 50, x, x);            //cuadrado sin rellemo que nace del centro del otro.

strokeWeight(3);               //determinar un grosor de 3px a la línea 
line(x*0, x*2, x*3, x*0);      //línea negra en la esquina superir izquierda

//noFill();                    //como la función esta arriba, no se tiene que repetir, toma TODO lo que está abajo
strokeWeight(2);               //determina un grosor de 2px a la línea
stroke(54, 215, 183);          //función para darle color a una línea
ellipse(x*4, y, x*3, x*3);     //elipse sin rellemo con el stroke de color turquesa