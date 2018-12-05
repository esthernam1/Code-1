//Ball myBall;
ArrayList <Ball> balls = new ArrayList<Ball> ();

//Ball is the class 
//balls are the instances you are calling

void setup() {
  size(600, 600);

  //myBall = new Ball();

  //balls = new ArrayList <Ball> ();
  
  
  //KNOW THE SYTNAX FOR ARRAYLISTS --ON FINAL
}

void draw() {
  background(0);
  //myBall.display();
  //myBall.move();
  //myBall.sideBounce();
  //myBall.bottomBounce();

  for (int i = 0; i < balls.size(); i ++) {
    Ball b = balls.get(i);
    b.display();
    b.move();
    b.sideBounce();
    b.bottomBounce();

    //removing the balls when it's clicked
    if (b.pos.y < 0) {
      balls.remove(i);
    }

    //calc the distance between mouse and instance b
    //then see if our mouse is pressed
    float d = dist(mouseX, mouseY, b.pos.x, b.pos.y);
    if (d < b.size/2 && mousePressed) {
      balls.remove(i);
    }
  }
  //when there are 10 balls, balls will stop generating
  if (balls.size() <= 10) {
    //adds balls every 30 frames
    if (frameCount % 30 == 0) {
      balls.add(new Ball());
    }
  }
}
