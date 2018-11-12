//float position.x; 
//float y; 
//float position.xSpeed; 
//float ySpeed; 

PVector position;    //replacing position.x, y pos
PVector velocity;    //replacing position.x,y speed

float r, g, b; 
int radius; 

void setup() {
  size(500, 500);
  background(0); 

  smooth(); 
  position = new PVector(width/2, height/2);
  velocity = new PVector(5, 6);
  
  radius = 100;
}

void draw() {
  fill(0, 10); 
  rect(0, 0, width, height); 
  //background(0); 

position.add(velocity); //adding position and velocity

  //create boundaries
  if ( position.x>= (width- radius/2) || position.x<= radius/2) {
    velocity.x = velocity.x *-1; //reverses position.xDirection
  }
  if ( position.y >= (height-radius/2) || position.y <= radius/2) {
    velocity.y  = velocity.y * -1;
  }

  if ( position.x== (width- radius/2) || position.x== radius/2 ) {
    r = random(0, 255); 
    g = random(0, 255); 
    b = random(0, 255);
  }

  if ( position.y>= (height- radius/2) || position.y<= radius/2 ) {
    r = random(0, 255); 
    g = random(0, 255); 
    b = random(0, 255);
  }

  noStroke();   
  fill(r, g, b); 
  ellipse(position.x, position.y, radius, radius);
}
