void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  int distance = int(dist(width/2, height/2, mouseX, mouseY));
  if (distance<200/2 && mousePressed) {
    fill(255);
  } else {
    fill(150);
  }
 
  ellipse(width/2, height/2, 200, 200);
}