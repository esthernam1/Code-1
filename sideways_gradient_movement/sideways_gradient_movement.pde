int y1=-0;
int color1=1;

void setup(){
  size(600,600);
  background(40,40,200);
}

void draw(){
  if (mousePressed == true) {
 stroke(color1);
 line(mouseX,mouseY,y1,color1);
 color1=color1-20;
 y1=y1+10;
 

}
}