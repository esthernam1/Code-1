float x = width/2;
float y = height/2;
float xSpeed = 5;
float ySpeed = 3;

void setup(){
  size(300, 300);
 
}

void draw(){
   int size = 50;
  background(0, 150, 200);
  ellipse(x, y, size, size);

  
  x = x + xSpeed;
  y = y + ySpeed;
  
  if(x > width-size/2 || x< size/2){
    xSpeed = xSpeed*-1;
}
  if(y > height-size/2 || y< size/2){
    ySpeed = ySpeed*-1;
}

}
void keyPressed(){
   
    if (key == 'v')
    {
      xSpeed = 0;
      ySpeed = 0;
    }
        if (key == 'b')
    {
      xSpeed = 5;
      ySpeed = 3;
    }
}
   