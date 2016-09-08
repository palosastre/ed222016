/* dibujo del patron de triangulos  */
void patron(int p, int o) {
  noStroke();
  stroke(80);
  strokeWeight(random(4));
  if(A == 0){
    fill(colT[2], colT[0], colT[1]);
  } else if(A==1){
    fill(colT[0],colT[1],colT[2]);
  }
  triangle(p, o+20, p+10, o, p+20, o+20);
  
  if(A == 0){
    fill(colT[0], colT[1], colT[2]);
  } else if(A==1){
    fill(colT[1],colT[2],colT[0]);
  }
  triangle(p+10, o, p+20, o+20, p+30, o);
  
  if(A == 0){
    fill(colT[1], colT[2], colT[0]);
  }else if(A==1){
    fill(colT[2],colT[0],colT[1]);
  }
  triangle(p+20, o+20, p+30, o, p+40, o+20);
  
  if(A == 0){
    fill(colT[0], colT[2], colT[2]);
  }else if(A==1){
    fill(colT[2],colT[1],colT[0]);
  }
  triangle(p, o+20, p+10, o+40, p+20, o+20);
  
  if(A == 0){
    fill(colT[2], colT[2], colT[0]);
  }else if(A==1){
    fill(colT[1],colT[2],colT[0]);
  }
  triangle(p+20, o+20, p+10, o+40, p+30, o+40);
  
  if(A == 0){
    fill(colT[2], colT[0], colT[2]);
  }else if(A==1){
    fill(colT[1],colT[2],colT[0]);
  }
  triangle(p+20, o+20, p+40, o+20, p+30, o+40);
}