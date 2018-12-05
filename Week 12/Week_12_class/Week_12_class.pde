ballz moreBallz [] = new ballz[10];


void setup() {
  size(600, 600);

  for (int i = 0; i<10; i++) {
    moreBallz[i] = new ballz(100,(i + 1)*50);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < 10; i++) {
   moreBallz[i].display();
    moreBallz[i].move();
    moreBallz[i].reset();


}
}
