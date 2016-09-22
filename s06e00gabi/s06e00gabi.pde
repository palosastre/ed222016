//Expresión Digital II - Diseño Digital - UDD - 2016
//Gabriela Navarro Risopatrón
//s06e00gabi
int x, y, velx, vely, t;
int c1;

//colores
color bl, nr, turq, ye, pi;

void setup() {

  //colorMode(HSB, 360,100,100)(isi ordoñez)
  size(400, 400);
  x = (int)random(width);//200; //velx = 2 //(int)random(width)
  y = height / 2;//200; // vely = 3 // height/2;
  velx = 4;
  vely = 6;
  t = 50;
  c1 = color(255, 255, 255);

  bl = color(255, 255, 255);
  nr = color(255, 0, 255);
  turq = color(97, 209, 206);
  ye = color(255, 250, 88);
  pi = color(250, 121, 229);
}

void draw() {
  t = mouseY;
  background(123);
  fill(c1);
  ellipse(x, y, t, t);//(x, y, 40, 40);

  x += velx; //reemplaza el x += 2
  y += vely;


  // ¿Qué tengo que escibir para que la elipse aparesca al lado izquierdo, cuando llega al final?
  //if (x > width) {
  //   x = 0;

  //¿Qué tengo que escribir para que la elipse se devuelva?
  if (x > width - t / 2 || x < t / 2) {   // if  (x > width - 20|| x < 20) {  vel *= -1}
    velx *= -1;
    //para un fill dependiendo de mis colres
    //ejemplo1: fill(random(255), random(255), random (255))
    //ejemplo2(isi): fill(86,28.5,74.1) (colorMode(HSB))

    //BORDES
    int r = (int)random(4);
    if (r == 0) {
      c1 = bl;
    }
    if (r == 0) {
      c1 = ye;
    }
    if (r == 0) {
      c1 = pi;
    }

    if  (y > height - t / 2 || y < t / 2)//(y > height - 20 || y < 20) {  { vel1 *= -1}
      vely *= -1;
    //ejemplo isi: fill(41, 93.7, 98.8) (HSB)
    //ejemplo 1: fill(random(255), random(255), random(255))
    //BORDES
    if (r == 0) {
      c1 = nr;
    }

    if (r == 0) {
      c1 = turq;
    }
  }
}