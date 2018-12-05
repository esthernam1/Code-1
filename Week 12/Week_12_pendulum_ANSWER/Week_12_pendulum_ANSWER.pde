float x, y; 
int r; 
int inc; 
void setup() {
  size(600, 600);
}

void draw() {
  background(100); 
//r is like radial rotation..?
//if r(the ball) hits 0, it should reverse direction 
//if r hits 180 it should reverse towards 0

  if (r <= 0) {
    inc = 2;
  }
  if (r>=180) {
    inc = -2;
  }
  r += inc; 
  println(r); 

  x = cos(radians(r))* 200 + width/2; 
  y = sin(radians(r)) * 200 + height/2; 

  line(width/2, 100, x, y); 
  ellipse(x, y, 50, 50);
}
