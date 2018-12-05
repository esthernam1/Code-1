class Ball {
  PVector pos;
  PVector vel;
  PVector accel;
  int size = 25;

  Ball() {
    pos = new PVector(size/2, random(50, 550));
    vel = new PVector(random(1, 4), 0);
    accel = new PVector(.1, 0);
  }
  //
  void display() {
    ellipse(pos.x, pos.y, size, size);
  }

  void move() {
    pos.add(vel); 
  }

  void xAcceleration() {
    vel.add(accel);
  }
  
  void reset(){
    if (pos.x > width+size/2){
      pos.x = 0;
    }
  }
}
