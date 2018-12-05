PVector position;
float theta = 0;
int orbitSize = 100;
int yIncrement = 5;

void setup() {

  size(600, 600);

  position = new PVector(width/2, 0);
}

void draw() {
  background(0);
  theta +=.1;
  //or theta = frameCount;

  //orbit movement
  position.x = width/2 + cos(theta)*orbitSize;
  position.y = height/2 +sin(theta)*orbitSize;

  //wave moevement LEFT to RIGHT
  //position.x ++;


  //wave movement TOP to BOTTOM
  position.x  = width/2 + orbitSize*cos(theta);
  //position.y +=5;  

  //make it come back to TOP
  if (position.y>=height) {
    position.y = 0;
  }

  position.y += yIncrement;
  if (position.y >= height-25) {
    yIncrement = -5;
  }

  if (position.y <= 25) {
    yIncrement = 5;
  }
  ellipse(position.x, position.y, 50, 50);
}
