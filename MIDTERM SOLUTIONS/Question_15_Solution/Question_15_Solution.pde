void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(80);
  translate(0, 0);
  noStroke();
  rect(mouseX, mouseY, 100, 100);
}