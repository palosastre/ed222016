// Expresión Digita II - Diseño Digital - UUD - 2016
//Javiera Ramírez
// s04t00

/* Cuando el programa corra se formará una grilla imaginaria en un
 fondo de color negro, y sobre cada intersección de las líneas de la 
 grilla se crearán círculos de fondo blanco con transparencia y 
 borde naranjo. Este programa es responsivo, lo que significa que
 independiente del tamaño del ancho o alto, la grilla siempre va
 a constar de 9 círculos a lo ancho y 7 a lo alto. El diámetro de los
 círculos va a corresponder siempre a una décima parte del
 largo que corresponda al lado mas corto del canvas, al igual que
 el borde, que es una 50ava parte del lado mas corto del canvas,*/

color c = color(4, 175, 146); // variable de color CALIPSO
color n = color(255, 106, 0); // variable de color NARANJO
color b = color(255); // variable de color BLANCO
color ne = color(0); // variable de color NEGRO

/*Se dibuja el canvas y se delcara que el fondo de éste 
 es de color negro*/
void setup() {
  size(1000, 600);
  background(ne);
}

void draw() {
  background(ne); // Cada vez que se dibuje un frame el fondo de lo que se dibuje
  // será negro
  int diam; // variable de diámetro de la elipse
  int borde; // variable del grosor del stroke

  /* Si el ancho del canvas es de menor o igual tamaño que el alto, el diámetro de
   la elipse será un décimo del ancho, y el grosor del stroke será de una 50ava parte
   del ancho del canvas. Pero si el alto del canvas es menor que el ancho, las medidas
   de la elipse y el stroke se harán con respecto al alto.*/
  if (width <= height) {
    diam=width/10;
    borde=width/50;
  } else {
    diam=height/10;
    borde=height/50;
  }

/* Se crea la grilla sobre la cual se hacen las elipses blancas con canal alpha
y borde naranjo, que cambia a calipso si se apreta la tecta 'x' y vuelve a
naranjo si se apreta la tecla 'z'. Ambos tamaños de diametro de la elipse 
y grosor del borde varían según el tamaño del canvas, pero siempre serán
9 elipses hacia el lado y 7 hacia abajo*/
  for (int x = 0; x <= width; x += width/8) {
    for (int y = 0; y <= height; y += height/6) {
      strokeWeight(borde);
      stroke(n);
      fill(b, 200);
      if (key == 'x') {
        stroke(c);
      }if (key == 'z') {
        stroke(n);
      }
      ellipse(x, y, diam, diam);
    }
  }
}