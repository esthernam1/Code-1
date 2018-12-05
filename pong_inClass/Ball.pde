class Ball {
  float x, y;
  float xSpeed, ySpeed;

  int size;

  Ball(float _x, float _y) {
    x = _x;
    y = _y;

    size = 50;
    xSpeed = random(-7, 7);
    ySpeed = random(-7, 7);
  }


  //bounce paddle 
  void bounceP() {
    xSpeed *= -1.1;
    ySpeed *= 1.1;
  }

  //bounce top and bottom
  void bounceY() {
    ySpeed = -ySpeed;
  }
  void bounceX() {
    xSpeed = -xSpeed;
  }
  //display
  void display() {
    fill(255);
    noStroke();
    ellipse(x, y, size, size);
  }

  //move
  void move() {
    x += xSpeed;
    y += ySpeed;
  }

  //restart
  //reset the ball
  void reset() {
    x = width/2;
    y = height/2;
        xSpeed = random(-7, 7);
    ySpeed = random(-7, 7);
  }
  //subtract score
}
