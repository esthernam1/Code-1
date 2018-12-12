class Wall{
  
  int xpos = width;
  int ypos = height/2;
  int h;
  float speed = 10;
  boolean del = false;
  boolean up = false;

  Wall(/*int xpos, int ypos*/){ 
    //this.xpos = xpos;
    //this.ypos = ypos;
    h = int(random(50, 150));
  }

  void display(){
    fill(255);
    rect(xpos, ypos -h, 5, h); //wall
    
    if (dist(x, y, xpos, ypos) < 20){
      println("gameover");
      game_over = true;
    }
  }

  void move() {
    xpos -= speed;
    if (xpos < -5) {
      del = true;
    }

    //making it go faster depending on your score
    if (score  > 5) {
      speed = 7;
    }
    if (score  > 10) {
      speed = 9;
    }
    if (score  > 15) {
      speed = 11;
    }
    if (score  > 20) {
      speed = 13;
    }
    if (score  > 30) {
      speed = 15;
    }
    if (score  > 40) {
      speed = 17;
    }
    if (score  > 50) {
      speed = 20;
    }
  }
}
