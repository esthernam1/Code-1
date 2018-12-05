class Wall
{
  int xpos = width;
  int ypos = height/2;
  int h;
  float speed = 10;
  boolean del = false;
  boolean up = false;

  Wall(/*int xpos, int ypos*/)
  { 
    //this.xpos = xpos;
    //this.ypos = ypos;
    h = int(random(50, 150));
  }

  void display()
  {
    fill(255);
    rect(xpos, ypos - h, 5, h);

    if (dist(x, y, xpos, ypos) < 20)
    {
      println("gameover");
      game_over = true;
    }
  }

  void move()
  {
    xpos -= speed;
    if (xpos < -5)
    {
      del = true;
    }
    if (score  > 9)
    {
      speed = 7;
    }
    if (score  > 19)
    {
      speed = 9;
    }
    if (score  > 29)
    {
      speed = 11;
    }
    if (score  > 39)
    {
      speed = 13;
    }
    if (score  > 49)
    {
      speed = 15;
    }
    if (score  > 59)
    {
      speed = 17;
    }
    if (score  > 69)
    {
      speed = 20;
    }
  }
}
