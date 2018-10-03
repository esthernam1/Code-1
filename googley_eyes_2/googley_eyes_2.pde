void setup() 
{
  size(600, 600);
} 

void draw() 
{
  background(192, 64, 0);

  //mouth
  stroke(255);
  ellipse(mouseX, mouseY, 80, 80);

  //eye white
  noStroke();
  fill(255);
  ellipse(150, 70, 70, 70);
  ellipse(270, 70, 70, 70);

  noStroke();
  //eey black
  fill(0);
  ellipse(155, 85, 45, 45);
  fill(0);
  ellipse(270, 85, 45, 45);


  if (mousePressed==false) 
  {
    noStroke();
    ellipse(210, 220, 200, 130);
  }
}