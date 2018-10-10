//Replicate pattern 
//Create a single loop. 
//Change size of shape based on position in the loop (shape get smaller/larger)
//Create nested loop. Use map function in loop (differently than in class!)
//Use mouse position to create dynamic loop


int bgColor;
void setup(){
size(600, 600);
}


void draw(){
  int size = 50;
      float p = int(map(mouseX, 0, width, 0, 255));
      float q = int(map(mouseY, 0, height, 0, 255));
      
        //float d = dist(mouseX, mouseY, p, q);
        //float s = map(d, 0, width, 0, 40); 
        //float o = map(d, 0, width, size, size);
        
color c = color(p, 0, q);
background(255);

//move mouse to create intersting interaction with lines of pattern
//hold mouse to change colors of background
    if (mousePressed){
      background(c);
    }
  for (int i = 0; i <= width; i = i + size){
      line(mouseX, i, i--, mouseY);
      line(height, mouseX, i++, mouseY);

    
    }


    for(int t = 0; t < width; t = t + size){
      for (int r = 0; r < height; r = r + size){
      pushMatrix();
      
      translate(t*2, r*2);
      
      fill(0);
      triangle(size, 0, 0, 0, 0, size);   
      triangle(size, 0, size*2, 0, size*2, size);
      
      triangle (0, size, size, size*2, size*2, size);
    
        float d = dist(mouseX, mouseY, p, q);
        float s = map(d, 0, width, 0, 40); 
        float o = map(d, 0, width, size, size);
        
      popMatrix();
      

      } 
    }

      
      //float d = dist(mouseX, mouseY, i, j);
      
      //float a = map(d, 0, width, 0, 90);
    
    
    
  
     //   fill(p, 0, a);
     // rect(i, j, a, a);
  //for ( int s = 0; s < width; s = s + 60){
  //  fill(101);
  //  stroke(255);
  //  ellipse(x, height/2, 60, 60);
  //}
   
}