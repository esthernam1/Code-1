int num = 25; 
float xPos [] = new float[num]; 
int size = 20; 
float theta ;

int waveOffset=150; 

void setup() {
  size(500, 500); 

  int spacing = width/num; 

  for (int i = 0; i<num; i++) {
    xPos[i] = (spacing*i) + (size/2);
  }
}

void draw() {
  background(100); 
  theta += .01;

  for (int i = 0; i<num; i++) {
    ellipse(xPos[i], 100+ sin(theta + i*.2)*230+ waveOffset, size, size );
  }
}
