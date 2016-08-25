//Expresión Digital - Diseño Digital - UDD - 2016
// Ana María Ortiz
//s02t01anamaria


//canvas
void setup() {
size(1024, 768);
}

void draw() {
for (int x = 0; x <= width; x += 30) {
  for (int y = 0; y <= height; y += 30) {
    
      color a= color(251,234,46);  //amarillo
      color c= color(46,215,251);  //calipso
      float r = random(0, 255);    //random
      
      fill(r);
      noStroke();
      ellipse(x*3, y*5, 50, 50);
      
      fill(a);
      noStroke();
      ellipse(x*2, y*4, 40, 40);
      
      fill(c);
      stroke (a);
      ellipse(x*6, y*6, 40, 40);
      
      fill(r);
      noStroke();
      ellipse(x*3, y*5, 20, 20);
      
     
  }
}
}