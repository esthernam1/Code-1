//player
//ball
//collision detection
//score
//lives
//timer

int score;
float startTime;
float ellapsedTime;

Paddle player1;
Ball ball;
PVector playPos [] = new PVector [2];
void setup() {
  size(800, 600);


  playPos[0] = new PVector(width-100, height/2);
  player1 = new Paddle(playPos[0]);
  ball = new Ball(width/2, height/2);
}

void draw() {
  background(0);
  player1.update();
  player1.display();

  ball.move();
  ball.display();

  String printScore = (" score: " + score);
  text(printScore, 30, 30);

  if (ball.y > height-ball.size/2 || ball.y < ball.size/2) {
    ball.bounceY();
  }
  if (ball.x <= ball.size/2) {
    ball.bounceX();
  }

  if (ball.x >= width-ball.size/2) {
    ball.reset();
  }

  //need to check if the ball position is within the boundaries
  //of the player paddle
  if (ball.x >= player1.position.x - (5+ball.size/2) && ball.y >= player1.position.y - player1.rectSize/2
    && ball.y <= player1.position.y + player1.rectSize/2) {
    ball.bounceP();
    score ++;
  }
    //ellapsed == startTime - current second 
  float ellapsedTime = (millis() - startTime)/1000;
  println(ellapsedTime);
  //Timer
  text(60-ellapsedTime, 20, 100);
  
  if ((60-ellapsedTime)<=0){
    startTime = millis();
    ball.x = width/2;
    ball.y = height/2;
    score = 0;
  }
 

}
