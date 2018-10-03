void setup(){
  size(800, 800);
  
  noStroke();
}

void draw(){
  background(255);
  int numCircles = 20; //able to change this
  
  int size = width/numCircles;
  
  for(int i = size/2; i<width; i+= width/numCircles){
    for(int j = size/2; j<height; j+=height/numCircles){
      int g = int(map(i, 0, width, 0, 255));
      int r = int(map(j, 0, height, 0, 255));
      
      float d = dist(mouseX, mouseY, i, j); //important that this is local var bc you want it to change when its inside loop
    
      float s = map(d, 0, width, 20, 40); 
      
      float o = map(d, 0, width, 255, 0);
      //change opacity of ellipse based on mouse distance
      
      fill(r, g, 100, o);
      ellipse(i, j, s, s);
    
    }
  }
}