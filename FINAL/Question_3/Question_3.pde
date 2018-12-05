int num = 25; 
float xPos [] = new float[num]; 
int size = 20; 
float theta ;

int waveOffset=200; 

void setup() {
  size(500, 500); 

  int spacing = width/num; 

  for (int i = 0; i<num; i++) {
    xPos[i] = (size*i) + (size/2);
  }
}

void draw() {
  background(100); 
  theta += .01;

  for (int i = 0; i<num; i++) {
    ellipse(xPos[i], waveOffset + sin(theta + i*.2)*300, size, size );
  }
}
