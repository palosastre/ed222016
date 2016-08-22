// Expresión Digital - Diseño Digital - UDD - 2016
// NRicardo Vidal Lynch
// s01t01lynch

int s = 5;  // variable tamaño small
int m = 13; // variable tamaño medium
int l = 25; // variable tamaño large
int miColor = 64;  // variable color
noStroke();  // sin linea
fill(0);  //  relleno negro 1era figura
for(int i=3; i<101;i+=s*2){  // forLoop, para repetir un dibujo varias veces
  for(int j=3; j<101;j+=s*2){  // forLoop, para repetir un dibujo varias veces
  rect(i,j,s,s); // dibujo de varios rect negros
 }
}
fill(255); //relleno blanco 2da figura
ellipseMode(CENTER); // dibujar circulo desde el centro
ellipse(width/4,(height/4)*3,l*2,l*2);  // dibujar ellipse
for(int i =1; i<11; i++){  // forLoop, para repetir un dibujo varias veces
  fill(miColor*2,0,miColor,i*l);   // relleno color elegido 1, con transparencia
  rect(width-(s*i),height-(s*i),l,m); // dibujar varios cuadrados secuenciales, para que se note la transparencia
}
for(int i =1;i<l; i+=3){   // forLoop, para repetir un dibujo varias veces
  fill(0,miColor,miColor*2,i*l);   // color 2, con transparencia
  triangle(s+i,s+i,l+i,s+i,m+i,l+i);  // dibuja varios triangulos secuenciales
}