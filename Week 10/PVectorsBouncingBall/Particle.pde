class Particle {
  //data
  PVector position;
  PVector velocity;
  PVector gravity;

  color c;

  float size =20;


  //constructor
  Particle() {

    //sets our x & y position pvector to our mouse position
    position = new PVector(mouseX, mouseY);

    velocity = new PVector(random(-5, 5), random(1, 5));

    gravity = new PVector(0, .1);
  }

  //method
  void fall() {
    position.add(velocity);
  }

  void gravity() {
    velocity.add(gravity);
  }

  void bounce() {
    velocity.y = -velocity.y;    //reversing speed of y direction (TOP TO BOTTOM)
  }

  void sideBounce() {
    velocity.x = -velocity.x;    //reversing speed of x direction (LEFT TO RIGHT)
  }

  void display() {
    noStroke();
    c = color(map(position.x, 0, width, 0, 255),
    map(position.y, 0, width, 100, 255), 175);
    size = map(position.y, 0, height, 10, 50);
    fill(c);
    ellipse(position.x, position.y, size, size);
  }
}
