int yPosition = width/2;
void setup() {
  size(600, 600);
}

void draw() {

  println(yPosition);
  if (yPosition <= height) {
    yPosition +=10;
  } else {
    yPosition=0;
  }
  ellipse(width/2, yPosition, 100, 100);
}
