class Paddle{
  PVector position;
  float rectSize;
  
  Paddle(PVector _position){
    
  position = _position;
  rectSize = 200;
  
}

void update(){
  position.y = mouseY;
}

void display(){
  rectMode(CENTER);
  fill(200, 200, 0);
  rect(position.x, position.y, 10, rectSize);
}
}
