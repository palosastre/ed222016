class Catalina {  //Se establece la clase Catalina
  //variables as things
  float x, y, tx, ty, vx, vy, angulo; //Variables en decimal a usar.
  int velx, vely; //Variables enteras a usar.
  
  Catalina (float x, float y, float tx, float ty, float velx, float vely, float angulo) { /*Se escriben los valores de cada variable. 
  Se utiliza this. para referirse a variables de a otra ventana.*/
    //Inicialize the things
    this.x = x;
    this.y = y;
    this.tx = tx;
    this.ty = ty;
    this.velx = 2;
    this.vely = 2;
    this.angulo = angulo;
    c1 = color(#CB4040); //Rojo
    c2 = color(#406FCB); //Azul

  }

//Se crea los círculos más grandes junto a una línea. Giran en torno a un angulo y se mueven entre x e y.
  void lineaCirculo2() {
    pushMatrix();                    //Comienza una acción - Todo lo que suceda dentro de este pushMatrix(); no afectará a otro objeto
    translate(x * 5, y * 5);
    rotate (angulo);
    amt = map(x, 0, width, 0, 8);
    c3 = lerpColor(c1, c2, amt);
    fill(c3);
    ellipse(20, 20, 7, 7);
    stroke(51);
    line(4, 4, 18, 18);
    popMatrix();
  }
//Se crea los círculos más pequeños junto a una línea. Giran en torno a un angulo y se mueven entre x e y.
  void lineaCirculo1() {
    pushMatrix();                  //Comienza una acción - Todo lo que suceda dentro de este pushMatrix(); no afectará a otro objeto
    translate(x * 5, y * 5);
    rotate (-angulo);
    stroke(51);
    line(4, 4, 18, 18);
    amt = map(x, 0, width, 0, 2);
    c3 = lerpColor(c1, c2, amt);
    fill(c3);
    ellipse(20, 20, 5, 5);
    popMatrix();              //Termina una acción
  }
  
// Se crean unos rectángulos que se mueven entre x e y y van cambiando de forma.
  void rectangulo() {
    pushMatrix();                  //Comienza una acción - Todo lo que suceda dentro de este pushMatrix(); no afectará a otro objeto
    translate(x * 8, y * 8);
    rotate (-angulo);
    amt = map(x, 0, width, 0, 8);
    c3 = lerpColor(c1, c2, amt);
    fill(c3);
    rect(20, 20, 10*sin(a/12)+50, 10*sin(a/15)+50);
    popMatrix();              //Termina una acción
  }

//Se señala el movimiento para x e y que se utiliza con las ellipses y líneas
  void mover() {
    x += -.01;
    y += -.01;
    angulo += .05;
  }

////Se señala el movimiento para x e y que se utiliza con los rectángulos.
  void mover1() {
    x += .09;
    y += .09;
    angulo += .02;
  }
}