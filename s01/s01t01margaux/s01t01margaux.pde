//Expresion Digital - Diseno Digital - UDD - 2016
//Margaux Leroy
//s01e01margaux

/*
Ejercicio para trabajar los colores, espesores y rellenos
*/

//declaracion de variables
int x= 50;
int y= 0;

int a = 250;
int b = #F34F3D;

//color del fondo
background(b);

//rectangulo de la misma color del fundo con una linea blanca de 4px
strokeWeight(4);
stroke (a);
fill (b);
//otro rectangula mas pequeno al interior comienza a la izquierda con un linea de 2px
rect(x, y, 30, 30);
strokeWeight(2);
rect(x, y, 20, 20);
//elipse grande con un fundo blanco
fill (a);
ellipse(y, x, 50, 50);
//otra elipse al interior del otro con una linea de la misma color del fundo
stroke (b);
ellipse(y, x, 40, 40);
//linea que separa los elipses de los rectangulos
stroke (a);
line(y, y, 100, 100);