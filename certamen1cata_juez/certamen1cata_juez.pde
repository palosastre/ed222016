
//Expresión Digital - Diseño Digital - UDD - 2016
//Catalina Juez
//certamen 1

color color1; 
color color2; 
color color3;

int b= 255; 
int n= 0; 

void setup() {
  color1= color(132, 87, 232, 70); 
  color2= color(78, 9, 229, 70); 
  color3= color(78, 9, 229, 30);
  
  size(1024, 768); 
  rectMode(CENTER);
  background(b); 
 
  
  for (int x=0; x<= width; x += 20) {
    for (int y = 0; y<= height; y += 20) {
      float a = (random (2, 10)); 
    
      noStroke ();
      fill(color2); 
      rect (x*3, y*3, a*3, a*3); 
      
      fill(color3); 
      rect (x*3, y*3, a*6, a*6); 

      fill(color1); 
      rect (x*3, y*3, a, a); 
      
      fill(color3); 
      ellipse (x*3, y*3, a*6, a*6);
        
      fill(color3); 
      ellipse (x*2, y*2, 100, 100);

    }
  }
}