
void setup(){
  size(600, 600); 
  

}

void draw(){
  //good for set number of loops 
  for( int i = 0; i<= 60; i++){
    fill(map(i, 0,60,0, 255));
    ellipse(i*10, height/4, 10, 10);
  }
  //good if your canvas size is variable
  for (int i = 0; i<= width; i+=10){
    int c = int(map(i, 0, width, 0, 255));
    fill(c, c, 90);
    ellipse(i, height/2, 10, 10);
  }
  
  //two different ways of doing the same thing
  //the first two for loops
  
  //if you want to vary the size of your shapes
  int size = 60;
  for(int i = 0; i<= width; i+=size){
    int c = int(map(i, 0, width, 0, 255));
    fill(60, c, c);
    ellipse(i, height/1.5, size, size);
  }
}