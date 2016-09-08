color random;

void setup() {
    colorMode(HSB, 360, 100, 100, 100);
  size(500, 1000);
  background(255);
    noStroke();
    noLoop();
    ellipseMode(CENTER);
}

void draw() {

for (int x = 0; x <= width; x = x + width/7) {
    for (int y = 0; y <= height; y = y + height/9) {
      int c = int(random(0, 3));
      if (c == 0) {
        c = color(0, 100, random(50, 100), random(25, 50));
      }

      if (c == 1) {
        c = color(100, 100, random(50, 100), random(0, 50));
      }

      if (c == 2) {
        c = color(random(200, 250), 100, 100, random(0, 25));
      }

      if (c == 3) {
        c = color(0, 0, 100, random(0, 50));
      }
      int i = int(random(1));
      if ( i == 0) {
        fill(c);
        rect(x, y, width/10, width/10);
      }
      if (i == 1) {
        fill(c);
            ellipse(x, y, width/10, width/10);
      }
      if (i == 2) {
        fill(c);
             rect(x, y, width/10, width/10);
      }
      if (i == 3) {
        fill(c);
             rect(x, y, width/10, width/10);
      }
      if (i == 4) {
        fill(c);
            rect(x, y, width/10, width/10);
      }
    }
  }
  }