//map the radius of the circle to how close your mouse is to the center of the circle
//in other words, your ellipse should get smaller the closer you are to the center

//right now, the size is mapped along the x axis

//for midterm change to minus
// for midterm d = -d

//if d== wdith{
//d=-d
float d;
float size; 
int xPos, yPos; 

void setup() {
  size(500, 500); 
  xPos = width/2; 
  yPos = height/2;
    ellipseMode(CENTER); 
}

void draw() {
  background(0); 

  //hint, in order to figure out the 3rd parameter for your map function, 
  //you will have to use pythagoreans theorem to calculate the maximum distance 
  //your mouse can be from the center of the ellipse 
  
  
  float a = sqrt(2*(width/2)* (width/2));
  float distance = dist(xPos, yPos, frameCount*4, frameCount*4);
  size = map(distance, 0, a, 0, width); 
  ellipse(xPos, yPos, size, size); 
if (d == width) {
    d=-d;
  //if (distance<=size/2) { 
  //  distance = d;
  //  if (distance>=size/2) {
  //    distance= -d;
  //  }
  }
}