//neg mouseX rotates it in left direction and pos mouseX rotates to right
//change this sketch so it rotates around the original position of the shape 
int x, y;
void setup() {
  size(600, 600); 
  rectMode(CENTER); 
  x=width/2;
  y=height/2;
}

void draw(){
background(0);
  
  pushMatrix();
  translate(x,y);
  rotate(frameCount/5); 
  rect(width/4, height/4, 100, 100); 
  pushMatrix();
  translate(80, 80);
  rotate(0/20);
  ellipse(0,0, 40,40);
    popMatrix(); 
  popMatrix(); 
  
    rect(width/2, height/2, 100, 100); 
}