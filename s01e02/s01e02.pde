//Expresión Digital - Diseño Digital - UDD - 2016
//Benjamin Gutierrez
//s01c01benja

/*dos lineas superpuestas al lado derecho del canvas,
y al lado izquierdo una ellipse bajo un cuadrado*/

int f = 0;
int x = 20;
int h = 30;
int y = 40;
int z = 60;
int s = 80;
int k = 100;

line(x, x, s, y);
line(y, x, s, k);
ellipse(x, z, h, h);
rect(f, y, x, x);