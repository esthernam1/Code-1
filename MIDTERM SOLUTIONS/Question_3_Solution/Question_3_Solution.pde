float xPos;
float yPos;

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  frameRate(10);
}

void draw() {
  background(50);
  ellipse(xPos, yPos, 30, 30);

  float r = random(2);

  if (r>0 && r <0.25) {
    xPos +=10;
  } else if (r>0.4 && r<0.6) {
    xPos -= 10;
  } else if (r>0.6 && r<0.8) {
    yPos += 10;
  } else if (r>.8 && r<1) {
    yPos -= 10;
  }
} 