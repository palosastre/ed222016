int col, fil, stepx, stepy, t;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  col = 8;
  fil = 6;
  if (width < height) {
    t = width/10;
  } else if (height < width) {
    t = height/10;
  } else if (width == height) {
    t = height/10;
  }  
  stepx = width/col;
  stepy = height/fil;
}

void draw() {

  background(53);   
      for (int i = 0; i <= width; i +=15) {
      for (int j = 0; j <= height; j +=15) {
        float r = random(15, 30);
        strokeWeight(1);
        stroke(0);
        Bunn(i, j, r, 1);
    }
  }
  
   for (int x = 0; x <= width; x += stepx) {
    for (int y = 0; y <= height; y += stepy) {  
      ellie(x, y, 30, x * 0.03);
    }
  //for (int x = 0; x <= width; x += stepx) {
  //  for (int y = 0; y <= height; y += stepy) {
  //    ellipse(x, y, t, t);
  //  }
  //}
  //saveFrame("s04t00code02.png");
  //exit();
  }
}

void ellie(int posx, int posy, float tam, float sw) {
  float Colorc = map(mouseY, mouseX, width, 0, 360);
  float newTam = map(mouseX, 0, width, 5, 50);
  strokeWeight(1);
  stroke(0);
  ellipse(posx, posy, newTam, newTam);
  float newSw = map(mouseY, 0, width, 1, 15);
  strokeWeight(newSw);
  stroke(150-Colorc, 70, 70);
  line(posx + tam, posy, posx - tam, posy);
}

void Bunn(int posi, int posj, float tam, float sw) {
  float Colorc = map(mouseY, 0, height, 150, 360);
  strokeWeight(sw);
  fill(Colorc, 100, 100);
  ellipse(posi, posj, tam, tam);
}
void keyPressed() {
  if (key=='q') {
    exit();
  }
}