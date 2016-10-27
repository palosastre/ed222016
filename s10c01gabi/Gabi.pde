class Gabi {
  boolean on;
  float x, y, x1, y1, velx, vely, angulo;
  float ang = 95;

  Gabi (float x, float y, float x1, float y1, float velx, float vely, float angulo) {
    this.x = x;
    this.y = y;
    this.x1 = x1;
    this.y1 = y1;
    this.velx = velx * 2;
    this.vely = vely * 2;
    this.angulo = angulo;
  }

  void dibujo() {
    pushMatrix();
    noStroke();
    fill(97, 209, 206);
    // ellipse(x, y, 4, 4);
    popMatrix();
  }

  void linea(float angulo) {
    pushMatrix();
    translate(x, y);
    rotate(ang);
    stroke(120);
    line(0, 0, 10, 10);
    popMatrix();
  }

  //cambiar estados del boolean
  void contra() {
    if (frameCount % 150 == 0) {
      on = !on;
    }

    if (on == true) {
      pushMatrix();
      translate(x + 15, y + 15);
      rotate(angulo - 180);
      stroke(120);
      line(0, 0, 10, 10);
      noStroke();
      fill(97, 209, 206);

      popMatrix();
    } else {

      if (on == false) {
        pushMatrix();
        translate(x - 15, y - 15);
        rotate(angulo);
        stroke(120);
        strokeWeight(1.5);
        fill(97, 209, 206);
        rect(10, 10, 20, 20);
        popMatrix();
      }
    }
  }
  void mover() {
    x += velx;
    y += vely;
    angulo = 0.08;
  }

  void bordes() {
    if (x > x1 || x < x1 - 20) {
      velx *= -1;
    }
    if (y > y1 || y < y1 - 20) {
      vely *= -1;
    }
  }
}