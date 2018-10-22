int num =10;
int size;
color gridC [][] = new color [num][num];
boolean clicked [][] = new boolean [num][num];
int speed [][] = new int [num][num];

void setup() {
  size(500, 500);
  size = width/num;

  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) { 
      gridC[i][j] = color (random(140, 255), random(50, 200), random(150, 255));

      speed[i][j] = 0;
    }
  }
}

void draw() {
  background(0);

  //reverse for loop
  //allows the rects to show going down
  for (int i=num-1; i>=0; i--) {
    for (int j = num-1; j>=0; j--) {
      fill(gridC [i][j]);
      if (clicked[i][j] == true) {
        speed[i][j] +=4;
      }
      if (mouseX>i*size && mouseX<=(i+1)*size 
        && mouseY>j*size && mouseY<=(j+1)*size) {
        println("i is: " + i + "j is: " + j);
      }

      noStroke();
      rect(i*size, j *size + speed[i][j], size, size);
      //change y coordinate speed by adding speed variable
    }
  }
}
void mousePressed() {
  for (int i=0; i<num; i++) {
    for (int j = 0; j<num; j++) {

      if (mouseX>i*size && mouseX<=(i+1)*size 
        && mouseY>j*size && mouseY<=(j+1)*size) {
        speed[i][j] = 5;
        gridC[i][j] = color (random(140, 255), random(50, 200), random(150, 255));
        speed[i][j] +=1;
        clicked[i][j] =true;
      }
    }
  }
  //for (int i=0; i<num; i++) {
  //  for (int j = 0; j<num; j++) {

  //    if (mouseX>i*size && mouseX<=(i+1)*size 
  //      && mouseY>j*size && mouseY<=(j+1)*size) {
  //      //gridC[i][j] = color (0, 0, 0);
  //      speed[i][j] +=1;
  //      clicked[i][j] =true;
  //    }
  //  }
  //}
}