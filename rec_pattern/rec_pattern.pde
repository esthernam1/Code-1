import processing.pdf.*;
void setup() {
  background(255);
  size(280, 600, PDF, "filename.pdf");
  strokeWeight(2);
  drawCarpet();
}

void drawCarpet() {
  for (int y = 50; y < height; y += 50) {
    line(0, y, width, y);
  }
  for (int x = 30; x < width; x += 100) {
    for (int y = 0; y < 700; y+= 100) {
      quad(x, y, x + 25, y + 50, x, y + 100, x - 25, y + 50);
      quad(x + 50, y - 50, x + 75, y, x + 50, y + 50, x + 25, y);
    }
  }
    println("Finished.");
  exit();
}