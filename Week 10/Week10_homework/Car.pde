class Car {
  float carX;
  float carY;
  color carColor;

  PVector position;
  PVector velocity;
  PVector gravity;

  PVector carVelocity;



  Car() {
    
      position = new PVector (mouseX, mouseY);
    velocity = new PVector(random(.5, .5), 0);
    gravity = new PVector(random(.5, .5), 0);
    carVelocity = new PVector(random(.5, 3), 0);
  }

  void gravity() {
    velocity.add(gravity);
  }

  void display(color _carColor) {
    fill(_carColor);
    rect(position.x, position.y, 80, 35);
    rect(position.x, position.y-15, 50, 40);
    fill(random(0, 100));
    ellipse(position.x+70, position.y+30, 30, 30);
    ellipse(position.x+10, position.y+30, 30, 30);
  }
  void drive() {
    position.add(velocity);
  }
}
