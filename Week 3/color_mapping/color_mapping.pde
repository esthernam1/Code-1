int x, y; 
int size; 
int xSpeed, ySpeed; 
color bgColor; 
int r, g, b; 
int colorRange; 

void setup(){
  size(300, 300); 
  x = width/2; 
  y = height/2; 
  
  xSpeed = int(random(-10, 10)); 
  ySpeed = int(random(-10, 10)); 
  
 
  size = 50; 
}

void draw(){
  background(bgColor); 
  
  colorRange = int(map(x, 0, width, 0, 250));
  //first two variables are the natural range of value "x"
  //the second two variables are the new range you want to map
  //your variable to
  g = int(map(y, 0, width, 0, 255)); 
  
  b = int(map(mouseX, 0, height, 0, 255)); 
  
  bgColor = color(colorRange, 0, 200); 
  
  fill(0, g, b); 
  ellipse(x, y, size, size); 
  
  println("x: " + xSpeed + " y: " + ySpeed); 
  x = x+xSpeed; 
  y = y+ySpeed; 
  
  if(xSpeed==0 || ySpeed==0 || xSpeed==ySpeed){
    xSpeed = int(random(-5, 5)); 
    ySpeed = int(random(-5, 5)); 
  }
  
  if(x<=size/2 || x>=width-size/2 ){
    xSpeed = int(random(-5, 5)); 
    xSpeed = -xSpeed; 
  } 
  
  if(y<=size/2 || y>=height-size/2){
    ySpeed = -ySpeed; 
    xSpeed = int(random(-5, 5)); 
  }  
}