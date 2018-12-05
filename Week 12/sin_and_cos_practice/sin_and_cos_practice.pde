float x, y;
float theta ;
float x1, y1;

void setup() {
  size(600, 600);
} 

void draw() {
  background(255);

  theta+=1;


  pushMatrix();
  translate(width/2, height/2);
  //where you are wanting to translating it to
  rotate(radians(theta));

  y = sin(theta/10)*25 +200;
  //dividing theta will smooth out the orbit
  //*25 is the SIZE of the orbit/oscillation THE SIZE OF THE WAVE
  //200 is our y offset WHERE THE WAVE IS STARTING FROM

  ellipse(0, y, 25, 25);
  popMatrix();
  x1 = cos(radians(theta))*100 + width/2;
  y1 = sin(radians(theta))*100 + width/2;
  ellipse(x1, y1, 30, 30);

  ellipse(width/2, height/2, 100, 100);
}
