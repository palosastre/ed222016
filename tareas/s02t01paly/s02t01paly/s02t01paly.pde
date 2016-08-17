// Expresión Digital - Diseño Digital - UDD - 2016
// Paulina Descouvieres
// s02t01paly

//declarar variables de x e y
int x = 20;
int y = 60;

//COLORES USADOS
//azul marino (0, 0, 44)
//rosado (190, 42, 89)

//pintar el fondo azul marino
background(x*0, y*0, x*2+4);

//dibujar figuras
//linea diagonal rosada con grosor de 80
stroke(y*3+10, x*2-2, x*4+9);
strokeWeight(x+y);
strokeCap(PROJECT);
line(x*0, x+y, x, x*5);

//cuadrado con transparencia en el relleno
stroke(y*3+10, x*2-2, x*4+9);
strokeWeight(x/20);
fill(y*3+10, x*2-2, x*4+9, x*4);
rect(y, x, x, x);

//elipse
stroke(x*12+15);
strokeWeight(x/10);
noFill();
ellipse(y/2, y-10, x, x*2);

//linea horizontal con transparencia
stroke(x*12+15, x+y);
strokeWeight(x/20);
strokeCap(ROUND);
line(x, x+y, x*2+y, y-10);

//linea vertical
stroke(x*0);
strokeWeight(x/20);
strokeWeight(x/20);
line(x/2, x*0, y/2, x*2+y);