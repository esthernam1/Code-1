
int circleSize;
int circleX, circleY;
int distance;
float x;
float y;
int xspeed;
int yspeed;

color circleColor, bgColor;

boolean circlePressed;
//boolean circlePressed2;

float xPos, yPos;
float dist;

void setup() {
  size(500, 500);
  bgColor = color(30, 200, 200);
  background(bgColor);
  x = -width/2;
  y = -height/2;

  xPos = width*.75;
  yPos = height*.25; 
  circleSize = 100;
  xspeed =5;
  yspeed =5;

}

void draw() {


  distance = int(dist(xPos, yPos, mouseX, mouseY));
  background(bgColor);


  if (distance<circleSize/2) {
    circleColor = color(0, 230, 172);
  } else {
    circleColor = color(255, 163, 102);
  }
  if (circlePressed == true) { 
    bgColor = color(179, 203, 255);
  } else {
    bgColor = color(255, 255, 204);
  }
    println(circlePressed);

  //outer still circle
  fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
  noStroke();

  //moving GREEN circle
  fill(0, 130, 170);
  ellipse(x, y, circleSize, circleSize);
 
//inner still circle
fill(170, 150, 0);
  ellipse(xPos, yPos, circleSize-50, circleSize-50);
  
  //gray circle 
  fill(127);
  ellipse(mouseX, mouseY, 25, 25);

  x= x+xspeed;
  y= y+yspeed;

  int distance2 = int (dist(xPos, yPos, mouseX, mouseY));
  println(distance2);
  
//calculating speed of ellipse and borders
  if (x>=width-circleSize/2) {
    xspeed = xspeed * -1;
  } else if (y>= height- circleSize/2) {
    yspeed = yspeed * -1;
  } else  if (x<= 0+circleSize/2) {
    xspeed = xspeed * -1;
  } else if (y<= 0+circleSize/2) {
    yspeed = yspeed * -1;
  }
}

void mousePressed() {
  if (distance<circleSize/2) {
    circlePressed = !circlePressed; 
    println(circlePressed);
  }
  
  x= random(circleSize/2, width-circleSize/2);
  y= random (circleSize/2, height-circleSize/2);

  x = mouseX;
  y = mouseY;
} 


 void keyPressed() {
   
  fill(0, 130, 170);
  ellipse(x, y, circleSize, circleSize);
  
  
  if (key == 'a')
  {
    xspeed = 0;
    yspeed = 0;
    
    
  }
  
    if (key == 's')
  {
    xspeed = 10;
    yspeed = 10;
  }

 }