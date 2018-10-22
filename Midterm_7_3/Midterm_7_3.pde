//currently the sketch has a 50/50 chance of moving left or right 
//update the sketch so that whenever the mouse is clicked, there is 25% chance it will 
//move up, down, left, or right 
int xPos, yPos; 
void setup(){
  size(600, 600); 
  xPos = width/2; 
  yPos = height/2; 
}

void draw(){
  background(0); 
  ellipse(xPos, yPos, 50, 50); 
}
 
void mousePressed(){
   float r = random(0,1); 
  
  if(r >0 && r<0.2){
    xPos +=10; 
  }else if(r>0.2 && r<0.4){
    xPos -=10; 
  }else if(r>0.4 && r<0.6){
    xPos -=10; 
  }else if(r>0.6 && r<0.8){
    yPos -=10;
  }else if(r>0.8 && r<1){
    yPos -=10;
  }
}