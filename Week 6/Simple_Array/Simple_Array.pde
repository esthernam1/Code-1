//create grid system of variables
//frst array is 0 second is 1 third is 2
int num[][] = {{1, 2, 4, 5}, {5, 6, 7, 8}, {6, 7, 8, 9}};

void setup() {
  println(num[2][0]);
  //think of it like a grid 3 arrays across and 4 arrays down
  for (int i =0; i<3; i++) {
    for (int j =0; j<4; j++) {
      println(num[i][j] + " at " + i + " at " + j );
    }
  }
}