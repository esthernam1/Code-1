Ball myBall = new Ball();
Ball myBall2 = new Ball();
Ball myBall3 = new Ball();


void setup() {
  size(600, 600);
}


void draw() {
  background(0);

  myBall.display();

  myBall2.display();
  myBall2.move();
  myBall2.reset();

  myBall3. move();
  myBall3.display();
  myBall3.xAcceleration();
  myBall3.reset();
}
