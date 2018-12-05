PImage img;

void setup() {
  size(368, 480);
  img = loadImage("DOG.jpg");
  background(255);
  noStroke();
  frameRate(200); //changes speed of ellipsed getting color
}

void draw() {
  img.resize(368, 0);
  //image(img, 0, 0);
  
  int w = mouseX; //draw image using your mouse
  int h = mouseY;
  color c = img.get(w, h); //gets RGB color from the image
  
  float b = brightness(c);
  int f;
  if(b <150){
    f = 0;
  }else{
    f = 255;
  }
  fill(c);
  ellipse(w, h , 20, 20);
}