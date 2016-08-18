
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


//elipse:
fill(252,179,116);        //relleno color amarillo.
noStroke();               // no linea de contorno.
ellipse(30,30,60,60);     // medidas y ubicacion de la elipse.
                          
//cuadrado:               
fill(164,189,139);        //relleno color verde.     
stroke(255,255,255);      //linea de contorno blanca.
strokeWeight(4);          //grosor linea de contorno 4 px.
rect(40,30,50,50);        //medida y ubicación de cuadrado.

//punto:                  //el punto no tiene relleno (el relleno es el stroke).
stroke(255,255,255);      //linea de contorno blanca.
strokeWeight(10);         //grosor linea de contorno de 10 px.
point(50,50);             //ubicación de punto.

//linea:                  //las lineas no tienen relleno (el relleno es el stroke).
stroke(0,0,0);            //linea de contorno negra.
strokeWeight(2);          //grosor linea 2 px.
line(10,5,80,90);         //ubicación de la linea.