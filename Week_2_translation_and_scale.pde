void setup(){
  size(500, 500);
  rectMode(CENTER);
  int mouse;
}

void draw(){
  int mouse= mouseX, mouseY;
  background(250); //you must redraw the background in VOID DRAW in orde to avoid trails of rects when it rotates.
  
  pushMatrix();
 
  fill(255);
  translate(width*.75, height*.75);
  //rotate is in radian. To put it in degrees do rotate(radians(DEGREE AMT));
  rotate(radians(mouse));
  rect(0, 0, 100, 100);
  popMatrix(); //similar to brackets
  // move the coordinates back to origin with popMatrix.
  //Always need to have a pushMatrix in order to use a popMatrix, and vice versa. 
  
  pushMatrix();
  fill(255, 0, 0);
  translate(width*.25, height*.25);
  rotate(radians(mouse));
  rect(0, 0, 100, 100);
  fill(0);
  ellipse(0, 0, 50, 50);
  
  
  popMatrix();
  
  
  
}