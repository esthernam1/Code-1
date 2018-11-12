class Car {
  float carX;
  float carY;
  color carColor;

  PVector position;
  PVector velocity;
  PVector gravity;
  
  PVector carVelocity;



  Car(float _carX, float _carY) {
    carX = _carX;
    carY = _carY;

    position = new PVector (mouseX, mouseY);
    velocity = new PVector(random(.5, 1),0);
    gravity = new PVector(random(.5, 1),0);
    carVelocity = new PVector(random(1, 4),0);
  }
  void move() {
    position.add(velocity);
  }

  void gravity() {
    velocity.add(gravity);
  }

  void display(color _carColor) {
    fill(_carColor);
    rect(carX, carY, 80, 35);
    rect(carX, carY-15, 50, 40);
    fill(random(0, 100));
    ellipse(carX+70, carY+30, 30, 30);
    ellipse(carX+10, carY+30, 30, 30);
  }
  void drive() {
    carX+= carVelocity.x;
  }
}