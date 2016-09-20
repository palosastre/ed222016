// Catalina Juez
// s04t00

int a;
int z= color(132, 87, 232);

void setup() {
  size (500, 500);
  background(255);
}

void draw() {  
  if (width>= height) {
    a= height/10;
  } else {
    a= width/10;
  }

  for (int x = 0; x <  width; x += width/8) {
    for (int y = 0; y <height; y += height/6) {
      noStroke();
      fill(z);
      ellipse (x, y, a, a);
      
    }
  }
}