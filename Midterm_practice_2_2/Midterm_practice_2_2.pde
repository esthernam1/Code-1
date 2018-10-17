//change the color of an ellipse from black to white if the mouse is hovering over it 
int circleColor;

void setup() {
  size(700, 700);
  noStroke();
}

void draw() {
  background(255);


  //loop 36 times in x and y
  for (int i = 0; i <= width; i += width/35) {
    for (int j = 0; j <= height; j += height/35) {
      fill(circleColor); 
      ellipse(i, j, width/35, height/35);

      float d = dist(mouseX, mouseY, i, j); 
      if (d<=width/50) {
        circleColor = color(255);
      } else {
        circleColor = color(0);
      }
      if (d<=height/50) {
        circleColor = color(255);
      } else {
        circleColor = color(0);
      }
    }
  }
}