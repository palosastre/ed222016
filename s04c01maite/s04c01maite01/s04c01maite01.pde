import processing.pdf.*;

//Expresión Digital II - UDD - 2016.
//Maite Iturriaga Batlle.
//s04c01maite01.
//Es un patrón a base de lineas que van cambiando sus colores y grosores.

int x= 10; //Declarar un entero para los doble for loop 
int y= 20; //Declarar un entero para los doble for loop
float noesta=random(3);

color[] colores = new color[3]; //Declarar array de 3 colores

void setup() {
  size(900, 750); //Tamaño canvas
  rectMode(CENTER);
  colorMode(HSB,360,100,100); //color HSB, para imprimir
  colores[0] = color(60, 100, 100); //Inicializando Yellow
  colores[1] = color(180, 100, 100); //Inicializando Cyan
  colores[2] = color(300, 100, 100); //Inicializando Magenta
}

//Doble for loop para crear primer dibujo
void draw() {
  beginRecord(PDF, "sc04c01maite01###.pdf");
    background(0); //background color negro esta en void draw, para que cada vez se vuelva a dibujar
    
  for (int i = 10; i <=width; i = i+y) { // en el caso de que i sea menor que el ancho se le va sumar y
    for (int j = 0; j <=height; j = j+y ) { //en el caso de que j sea menor al alto a j se le sumara y
      stroke(colores[(int)random(colores.length)]);
      line( i, j, i+x, j); //Linea(a)
      stroke(colores[(int)random(colores.length)]);
      line( i, j, i, j-x); //Linea(b)
      stroke(colores[(int)random(colores.length)]);
      line(i-x, j+x, i-x, j+x*2);//Linea(c)
      stroke(colores[(int)random(colores.length)]);
      line(i, j, i-x, j+x); //Linea(d)
    }
  }
  //Doble for loop para crear segundo dibujo con un desface de 5.
  for (int i = 10+x/2; i <=width; i = i+y) {  //es /2 para que exista el desface en las lineas
    for (int j = x/2; j <=height; j = j+y ) { //es /2 para que exista el desface en las lineas
      strokeWeight(random(0,3));//Random de grosor de la linea entre 0 a 3
      stroke(colores[(int)random(colores.length)]);
      line( i, j, i+x, j); //Linea(a)
      
      strokeWeight(random(0,3));//Random de grosor de la linea entre 0 a 3
      stroke(colores[(int)random(colores.length)]);
      line( i, j, i, j-x); //Linea(b)
      
      strokeWeight(random(0,3));//Random de grosor de la linea entre 0 a 3
      stroke(colores[(int)random(colores.length)]);
      line(i-x, j+x, i-x, j+x*2);//Linea(c)
      
      strokeWeight(random(0,3)); //Random de grosor de la linea entre 0 a 3
      stroke(colores[(int)random(colores.length)]);
      line(i, j, i-x, j+x); //Linea(d)
    }
  }
  noLoop(); //Para que no se repita 
  endRecord();
}


//Se crea la funcion keyPressed
void keyPressed() {

  if (key == 'a') { //cada vez que se apreta la tecla "a" se vuelve a dibujar
    redraw();
  } else if (key == 's') { //cada vez que se apreta la tecla "s" se guarda un pdf del canvas
    saveFrame("fils/fotos_##.pdf"); //se guarda en la nueva carpeta llamada fils
  }
}