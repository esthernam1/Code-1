import processing.pdf.*;
int x = 0;
int y = 0;
int z = 30;

void setup () {
 size (400,500, PDF, "filename.pdf");
 background (0);
 noStroke();
}

void draw() {
  if ( y < height) {
  if (x < width) {
    fill (random(0,255));
 ellipse (x, y, z, z);
 rect (x,y,z, z);
 x += z;
 } else {
 x = 0;
 y += z;
 }
}

println("Finished.");
  exit();
}