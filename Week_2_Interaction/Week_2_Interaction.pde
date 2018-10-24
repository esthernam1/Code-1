//int brushSize
//void setup(){
  
//  size(500, 500); 
// background(255);
// brushSize = 10;
//}

//void draw(){
//  if (keyPressed == true) { //You must hold any key down in order for the color of rect to change.
//    fill(0);
//  } else {
//    fill(255);
//  }
//  rect(25, 25, 50, 50);
//  int value = 0;
  

 
//}
//---------------------- write out a list of what needs to happen. Then, write out variables.
//nedd a boolan to detect if my mouse is pressed 
//if boolean true, want to draw ellipse where mouseX + mouseY 
//change the size of my drawing ellipse when arrows clicked
int size;
int x, y;

void setup(){
  size(500, 500);
  size = 10;
  noStroke();
  //don't want your x and y in setup bc it'll be constantly.
}


void draw(){
  
  x = mouseX;
  y = mouseY; 
  
  if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){
  //happens continuously bc it's in draw
      if (mousePressed){
      ellipse(x, y, size, size); 
  
}

}
//only happens one time
//when detects change in your mouse state(either clicked 
//or not clicked)

void keyPressed(){   
    if(key == CODED)
    if(keyCode == UP){
      size ++; 
//UP ARROW KEY



}