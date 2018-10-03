

void setup(){
  size (700, 700);
  background(245, 238, 220);

  
}

void draw(){
  ellipse(600, 200, 400, 400);
    stroke(0);
    strokeWeight(10);
    fill(500, 130);
    
    
    ellipse(600, 200, 300, 300);
    stroke(153);
    strokeWeight(0);
    fill(100, 459);
    
    
    triangle(59,95,400,200,200,59);
    fill(300, 290);
    
    
    
   line(0, .33, 2, .33);
   stroke(160);
   strokeWeight(4);
   
    triangle(90, 300, 296, 32, 32, 40);
  
    line(700, 200,10, 700);
    stroke(180, 60, 50);
    
    line(500, 200, 10, 200);
    stroke(90, 100, 20);
    
    println(mouseX, mouseY);

  
  
}