//Expresion Digital - Diseño Digital - UDD - 2016
//Gabriela Navarro
//s02t01gabi

/* la idea es hacer una especial de "robot" 
tierno hecho en base de figuras simples 
El fondo vendria siendo algo sutil que no opaque los colores de las figuras */


// variables
//declarar variables de x e y

int x = 30;
int y = 20; 

// elegir un color para el fondo basico para no opacar el resto
background(0,0,0, 60);


// linea 1 (x1, y1, x2,y2) es la primera de izquiera a derecha y va con transparencia
strokeWeight(4);
stroke(255,255,255,80);
line(y/2,y/2,x,x);

// linea 2 (x1, y1, x2, y2) es la segunda de izquierda a derecha
strokeWeight(2);
stroke(255,93,228);
line(x*3, y/2, x*2 + y/2, x);


//rectangulo (x,y,width, height) vendría siendo es unico rectangulo de la composicion
strokeWeight(5);
stroke(255,230,0);
rect(y,y*4,x*2,y/2);

//elipse 1 (x,y,width, height) vendria siendo el elipse mas grande como si fuera un ojo
strokeWeight(2);
fill(255,255,255);
ellipse(y*2 + y/2, y*2 + y/2, x, y);

//Elipse 2 (x, y, width, height) vendria siendo el circulo chico que esta dentro de la elipse
fill(255,93,228);
ellipse(y*2 + y/2, y*2 + y/2 ,y/2, y/2);