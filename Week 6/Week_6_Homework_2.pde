int num = 10;
int wPositions [] = new int [num];
int hPositions [] = new int [num];
color [] circleColor = new color [num];
int r1 [] = new int [num];
int r2 [] = new int [num];

int[] x = new int[width/2];
int[] y = new int[height/2];


void setup() {
  background(255);
  size(500, 300);
  for (int i=0; i<num; i++) {
    wPositions[i] = int(random(0, width));
    hPositions[i] = int(random(0, height));
    circleColor[i] = color (random(0, 255), random(0, 255), random(0, 255));
  }
}
void draw() {
  background(255);
  for (int i=0; i<num; i++) {
    noStroke();

    circle(wPositions[0], hPositions[0]); 
    circle1(wPositions[1], hPositions[1]);
    circle2(wPositions[2], hPositions[2]);
    circle3(wPositions[3], hPositions[3]);
    circle4(wPositions[4], hPositions[4]);
  }
}
void circle(int x, int y) {
  //fill(0, 0, 200, 40);
  for (int i = 0; i<num; i++) {
    fill(circleColor[i]);
    ellipse(x, y, 150, 150);
  }
}
void circle1(int x, int y) {
  for (int i = 0; i<num; i++) {
    fill(circleColor[i], 70);
    ellipse(x, y, 100, 70);
  }
}
void circle2(int x1, int y1) {
  for (int i = 0; i<num; i++) {
    fill(circleColor[i], 10);
    ellipse(x1, y1, 200, 200);
  }
}
void circle3(int x1, int y1) {
  noFill();
  stroke(220);
  strokeWeight(10);
  ellipse(x1, y1, 150, 150);
}
void circle4(int x1, int y1) {
  noFill();
  stroke(100);
  strokeWeight(4);
  ellipse(x1, y1, 100, 130);
}