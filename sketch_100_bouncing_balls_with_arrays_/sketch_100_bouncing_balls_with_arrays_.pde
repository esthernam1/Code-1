int num = 100;

int [] xPos = new int [num];
int [] yPos = new int [num];

int [] xSpeed = new int [num];
int [] ySpeed = new int [num];

int [] circleSize = new int [num];
color [] circleColor = new color [num];

int [] opacity = new int [num];

float dist;

void setup() {
  size(600, 600);
  for (int i = 0; i<num; i++) {

    xPos [i] = int (random(circleSize[i]/2, width-circleSize[i]/2));
    yPos [i] = int (random(circleSize[i]/2, height-circleSize[i]/2));

    //random speeds of balls
    xSpeed [i] = int(random(1, 5));
    ySpeed [i] = int(random(1, 5));

    circleSize[i] = int(random(10, 100));
    circleColor[i] = color (random(0, 255), random(0, 255), random(0, 255));

    opacity[i] = int (random(0, 255));
    //opacity[i] = 255;
  }
}

void draw() {
  background(0);

  //for loop for random position of balls
  for (int i = 0; i<num; i++) {

    if (xPos[i] <= circleSize[i]/2 || xPos[i] >= width- circleSize[i]/2){
      xSpeed[i] = xSpeed[i]*-1;
    }

    if (yPos[i] <= circleSize[i]/2 || yPos[i] >= height- circleSize[i]/2){
      ySpeed[i] = ySpeed[i]*-1;
    }

    xPos[i] = xPos[i] + xSpeed[i];
    yPos[i] = yPos[i] + ySpeed[i];

    fill (circleColor[i], opacity[i]);
    noStroke();
    ellipse(xPos[i], yPos[i], circleSize[i], circleSize[i]);
  
 
  if(dist(mouseX, mouseY, xPos[i], yPos[i])< circleSize[i]/2){
   opacity[i] =0;
  }
  
  if (keyPressed){
    opacity[i] = 255;
  }
  }
  
}