// this sketch has the ellipse change colors 
// whenever the mouse button is pressed. 

// change the sketch so that the ellipse only changes 
// colors when the mouse is pressed INSIDE the ellipse.
int c = 150;
int bgColor = 150;
int distance;
int circle = 200;
boolean circlePressed;
void setup() {
  size(600, 600);
}
void draw() {
  background(150);
  fill(c);
  ellipse(width/2, height/2, circle, circle);

  distance = int(dist(width/2, height/2, mouseX, mouseY));

  if (distance<circle/2 && mousePressed) {
    c=255;
  } else {
    c=150;
  }
}