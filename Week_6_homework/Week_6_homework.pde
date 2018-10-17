
String arrayOne [] = { "SQUARE", "RECTANGLE", "CUBE", "QUADRILATERAL", "FOUR-SIDED THING" };


void setup() {
  background(255);
  size(500, 300);
  //rectMode (CENTER);

  float r = random(0, 1);     //probability  
  //console will spit out 1 of 5 names
  for (int i=0; i<1; i+=r) {
    if (r>0 && r<0.2) {
      i=0;
    }
    if (r>0.2 && r<0.4) {
      i=1;
    }
    if (r>0.4 && r<0.6) {
      i=2;
    }
    if (r>0.6 && r<0.8) {
      i=3;
    }
    if (r>0.8 && r<1) {
      i=4;
    }
    println (arrayOne[i]);
  }
}
void draw() {
}