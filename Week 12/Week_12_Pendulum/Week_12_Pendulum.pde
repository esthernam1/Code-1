PVector origin;
PVector bob;

float length;
float angle = 45;

void setup() {
  size(600, 400);
  length = 180;
  origin = new PVector(width/2, 0);
  bob = new PVector(width/2, length);
}

void draw() {
  background(255);
  
  bob.x = origin.x + length*sin(angle);
  bob.y = origin.y + length*cos(angle);
  
  
  
  line(origin.x, origin.y, bob.x, bob.y);
  ellipse(bob.x, bob.y, 40, 40);
  
  angle += 0.1;
}
