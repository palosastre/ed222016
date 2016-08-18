
// Expresión Digital - Diseño Digital - UDD - 2016
// Isidora Ordoñez.
// s02e01isi

/*
circulo amarillo de 30 x 30 px ubicado a 30 px de la linea superior e izquierda 
del canvas y cuadrado verde con contorno blanco de 50 x 50 px ubicado a 40 px de
el eje x y a 30 px del eje y, un punto blanco de 10 px ubicado a 50 px del eje x 
y 50 px del eje y y una linea negra de grosor 2 px que cruza las figuras que tiene 
su punto de comienzo a 10 px del eje x y 5 del eje y y termina a 80 px del eje x 
y 90 px en el eje y.
*/

size (400,400);         // asigno variables de tamaño para canvas.

//Variables posición:
int x= 120;             //Asigno valor para Variable x
int y= 200;             //Asigno valor para Variable y
int z= 340;             //Asigno valor para Variable z
int b= 20;              //Asigno valor para Variable b

//Variables color:
color a = color(252,179,116);       //Asigno valor para color amarillo.
color v = color(164,189,139);       //Asigno valor para color verde.
color bl = color(255,255,255);      //Asigno valor para color blanco.
color n = color(0,0,0);             //Asigno valor para color negro.



//elipse:
fill(a);                  //relleno color amarillo.
noStroke();               // no linea de contorno.
ellipse(x,x,x+x,x+x);     // medidas y ubicacion de la elipse.
                          
//cuadrado:               
fill(v);                  //relleno color verde.     
stroke(bl);               //linea de contorno blanca.
strokeWeight(b);          //grosor linea de contorno 5 px.
rect(x+b+b,x,y,y);        //medida y ubicación de cuadrado.

//punto:                  //el punto no tiene relleno (el relleno es el stroke).
stroke(bl);               //linea de contorno blanca.
strokeWeight(b+b);        //grosor linea de contorno de 10 px.
point(y,y);               //ubicación de punto.

//linea:                  //las lineas no tienen relleno (el relleno es el stroke).
stroke(n);                //linea de contorno negra.
strokeWeight(b-3);        //grosor linea 2 px.
line(b+b,b,x+y,z);        //ubicación de la linea.