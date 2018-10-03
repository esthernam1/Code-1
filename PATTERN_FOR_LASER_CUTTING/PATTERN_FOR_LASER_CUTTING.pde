
import processing.pdf.*;
color c1, c2, c3;
float e = 30.0;

void setup(){
  size(500, 500, PDF, "PATTERN 2.pdf");
  noStroke();
  mousePressed();
}

void draw(){
  boolean isDisplayed = false;
  for(float y = -50; y < height + 50; y += 3.0 / 2.0 * e){
    for(float x = -50; x < width + 50; x += sqrt(3) * e){
      pushMatrix();
      if(!isDisplayed){
        translate(x, y);
      } else {
        translate(x + sqrt(3) / 2.0 * e, y);      
      }
      fill(c1);
      quad(0, 0, -sqrt(3) / 2.0 * e, e / 2.0, 0, e, sqrt(3) / 2.0 * e, e / 2.0);
      fill(c2);
      quad(-sqrt(3) / 2.0 * e, e / 2.0, 0, e, 0, 2.0 * e, -sqrt(3) / 2.0 * e, 3.0 / 2.0 * e);
      fill(c3);
      quad(sqrt(3) / 2.0 * e, e / 2.0, 0, e, 0, 2.0 * e, sqrt(3) / 2.0 * e, 3.0 / 2.0 * e);
      popMatrix();
    }
    isDisplayed = !isDisplayed;
  }
}

void mousePressed(){
  c1 = color(random(255), random(255), random(255));
  c2 = color(random(255), random(255), random(255));
  c3 = color(random(255), random(255), random(255));
 println("Finished.");
  exit();
}

 