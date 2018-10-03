float x, y;
float radius=50;
float distance;
void setup() {
  size(640, 320);
  background(0);
  x=width/2;
  y=height/2;
}


void draw() {

  ellipse(x, y, radius, radius);

  distance = dist(mouseX, mouseY, x, y);
  println(distance);
  
boolean circle = isInside();
print(circle);
  
}


boolean isInside() {
  if (distance< radius/2) {
    return true;
  } else {
    return false;
  }
}