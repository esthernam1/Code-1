PImage img;
int pixelSize = 2;
int cols, rows;

void setup() {
  size(499, 336, P3D);

  img = loadImage("image.jpg");

  cols = width/pixelSize;
  rows = height/pixelSize;
}

void draw() {
  background(0);
  img.resize(499, 0);

  loadPixels();

  for (int i = 0; i<cols; i++) {
    for (int j =0; j <rows; j++) {
      int x = i*pixelSize + pixelSize/2;
      int y = j*pixelSize + pixelSize/2;
      
      int loc = x +y *width;
      color c = img.pixels[loc];
      
      float z = (mouseX/(float(width))) *brightness(img.pixels[loc]);
      
      fill(c);
      
      pushMatrix();
      translate(x, y, z);
      noStroke();
      rectMode(CENTER);
      rect(0,0, pixelSize, pixelSize);
      popMatrix();
    }
  }
}