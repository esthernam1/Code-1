class Car {
  int xPos;
  float carX;
  float carY;
  color carColor;

  Car(int _xPos, float _carX, float _carY) {
    xPos = _xPos;
    carX = _carX;
    carY = _carY;
  }

  void display(int xPos, color _carColor) {
    fill(_carColor);
    rect(carX, carY, 80, 35);
    rect(carX, carY-15, 50, 40);
    fill(random(0, 100));
    ellipse(carX+70, carY+30, 30, 30);
    ellipse(carX+10, carY+30, 30, 30);
  }
  void drive() {
    carX=carY+xPos;
    xPos += 2;
  }
}