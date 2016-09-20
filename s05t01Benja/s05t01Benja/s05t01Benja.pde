//Expresión Digital - Diseño Digital - UDD -2016
//Benjamin Gutierrez
//s05t01Benja

/*inicio con un set up para describir el tamaño del canvas,
y setear un color para el fondo.
pasando al void draw, creo elipses en funcion de la altura y anchura del canvas,
dividiendo el ancho por 8 creando 9 columnas de elipses que hacia abajo,
divido por 6 para llegar hasta 7 filas y el tamanño es en funcion de
del alto partido en 10, para cuando sea mas ancho que alto, de lo contrario
uso ancho partido en 10*/


void setup(){
 size(600,300);
 background(90);
}

void draw(){
  for(int i = 0; i <= width; i += width/8){
    for(int j = 0; j <= height; j += height/6){
      if(height < width){
   ellipse( i, j, height/10, height/10);
    }else{
      ellipse(i , j, width/10, width/10);
      }
    }
  }
}