//draw circle in center
//calculate distance between mouse and circle
//if distance is less than radius, then change fill color
//make boolean in draw function ( when ellipse is pressed)
//true= mousePressed && if distance is < radius of circle
//print value of boolean to screen 

//color variable
//circleSize
//circleColor
//bgColor
//boolean for if ellipse is pressed
//x position, y position (of circle variable)

int circleSize;
int xPos, yPos;
color circleColor, bgColor;

int distance;

boolean isCircleOn;

void setup(){
  size(500, 500);
  bgColor = color(50, 180, 200);
  background(bgColor);
  
  xPos = width/2;
  yPos = height/2;
  circleSize = 100;
}

void draw(){
  background(bgColor);
       fill(circleColor);
  ellipse(xPos, yPos, circleSize, circleSize);
    distance = int(dist(xPos, yPos, mouseX, mouseY));
  
  if (distance<circleSize/2) {
    circleColor = color(255, 0, 150);
  //need an else statement in order for user to continually hover/click to change circleColor
 
  }else{
    circleColor = color(255, 255, 255);
  }
  
  if (isCircleOn == true){ 
    bgColor = color(100, 50, 0);
  }else{
    bgColor = color(0, 100, 50);
    
    println(isCircleOn);
}
}
 void mousePressed(){
   if(distance<circleSize/2){ 
     isCircleOn = !isCircleOn;
     println(isCircleOn);
  //if(distance<circleSize/2){
  //  bgColor = 255;
  //}else{
  //  bgColor = 150;
   }
}