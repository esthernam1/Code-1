float x;

void setup()

{
  background(255);
  size(600,600);
  x = 0;
  
}


void draw()
{

  x = x + 5;
  stroke(0);
  rect(x,40,50,50);
}