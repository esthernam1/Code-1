import processing.pdf.*;

void setup() {
  size(560,560, PDF, "Pattern take 2.pdf");
  background(255);
  smooth();
}

int n = 0;

void draw() {
    

      stroke(50); //#ED5D5D
      strokeWeight(3);

 if(n<width){
  for(int i = 0; i< height+10; i+=10) {
    int rand = int(random(2));
    if(rand == 0) {
      line(n,i,n+10,i+10);
    } else {
      line(n+10,i,n,i+10);
    }
  }
  }
  n+=10;  
  println("Finished.");
  exit();
}