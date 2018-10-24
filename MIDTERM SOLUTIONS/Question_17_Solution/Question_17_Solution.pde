
int gridW = 10;
int gridH = 10;
float opacity [][]= new float[gridW][gridH]; //opacity i think
int size;

void setup() {
  size(600, 600);
  size = width/10; 
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      opacity[i][j] = map(j * gridW + i, 0, gridW * gridH, 0, 255);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      fill(opacity[i][j]);
      rect(i*size, j*size, width/gridW, height/gridH);
      opacity[i][j]+=1;
      //if (size > i * width && size <= (i+1)* width/10 
      //   && size > j * width && size <=(j+1) * width/10) {

      if (opacity[i][j]>255) {
        opacity[i][j]=0;
      //} else{
      //  opacity[i][j]=255;
      }
    }
  }
}
