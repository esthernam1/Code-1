//change this sketch so it rotates around the original position of the shape 
int x, y;
int size = 100;


void setup() {
  size(600, 600); 
  rectMode(CENTER); 
  x = width/2;
  y = height/2;
  
}

void draw(){
  background(255);
  rect(width/2, height/2, size, size); 
  
  pushMatrix(); 
  
  int r = mouseX-mouseY;
  translate(x, y);
  rotate(radians(r)); 
  rect(width/4, height/4, size, size); 
  rotate(radians(r));
  rect(width/3, height/3, size, size);  

  popMatrix(); 

}