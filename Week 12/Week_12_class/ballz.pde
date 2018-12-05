class ballz {
  //data
  PVector position;
  PVector velocity;
  PVector acceleration;

  int size = 20;

  ballz(int x, int y) {
    position = new PVector(x, y);
    velocity = new PVector(random(1, 4), 0);
    acceleration = new PVector(random(.01, 1), 0);
  }

  void display() {
    ellipse(position.x, position.y, size, size);
  }

  void move() {
    position.add(velocity);
    velocity.add(acceleration);
  }

  void reset() {
    if (position.x > width+size/2) {
      position.x = 100; 
      velocity = new PVector(random(2, 4), 0);
    }
  }
}
