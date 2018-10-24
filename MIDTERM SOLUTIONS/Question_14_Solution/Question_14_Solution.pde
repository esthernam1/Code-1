float x = -100; 
float y = 100;

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {

  x = x+4;
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount + y));
  stroke(0, 130);
  line(-50, 0, 50, 0);

  popMatrix();



  if (x > width) {
    y= y+height/10;
    x =0;
  }
}