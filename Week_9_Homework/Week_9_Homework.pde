Car multiple[] = new Car[5];

void setup() {
  size(500, 400);
  noStroke();
  for (int i=0; i<multiple.length; i++) {
    multiple[i] = new Car (int(random(10, 100)), random(50, 100), random(40, 200));
  }
}
void draw() {
  background(135, 200, 220);
  fill(215, 200, 100);
  rect(0, height/1.8, 500, 500);
  for (int i=0; i<multiple.length; i++) {
    multiple[i].display(100+ i*10, color(200, i*50, 10));
    multiple[i].drive();
  }
}