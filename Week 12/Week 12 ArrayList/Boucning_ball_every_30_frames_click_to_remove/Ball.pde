class Ball {
  PVector pos;
  PVector vel;
  PVector accel;

  int size = 40;

  //constructor

  Ball() {
    pos = new PVector(random(size/2, width-(size/2)), random(size/2, height-(size/2)));

    vel = new PVector (random(-5, 5), random(1, 4));
    accel = new PVector(0, 0.1);
  }

  //side bounce
  void sideBounce() {
    if (pos.x < size/2 || pos.x > width - size/2) {
      vel.x= -vel.x; //reversing the direction
    }
  }

  //bottom bounce
  void bottomBounce() {
    if (pos.y > height - size/2) {
      vel.y= -vel.y; //reversing the direction
    }
  }

  //move --technically using this as gravity
void move(){
  pos.add(vel);
  vel.add(accel);
  
}

  //display
  void display(){
    ellipse(pos.x, pos.y, size, size);
  }
}
