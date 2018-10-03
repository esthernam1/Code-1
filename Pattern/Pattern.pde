import processing.pdf.*;

void setup() {
  size(500, 500, PDF, "DigitalCraftLC.pdf");
  
}

void draw() {
  background(0);
  int x = 0;
  int y = 0;

  
for (float w = width; w > 0; w -= 15) {
    stroke(0, 0 +w, 170 +w);
    noFill();
    ellipse(125, 375, w, w);
}

  
  while (x < height) {
    stroke(255, 0, x);
    line(0, 500, width, x);
    x += 15;
  }
  while (y < height) {
     stroke(-100+y, 255+y, 0);
     line(y, 0, width, y);
     y += 15;
}
 
 println("Finished.");
  exit();
}