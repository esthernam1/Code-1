
void setup() {
  size(600, 600);
  noStroke();

}

void draw() {
  background(150);
  for (int i = 0; i < 10; i++) {
    int x = (i*60)+15;
    rect(x, 150, 30, 300);
    x += 60;
  }
}
