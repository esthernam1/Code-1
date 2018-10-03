import processing.pdf.*;
float t;

void setup(){
    background(20);
    size(500, 500,PDF,"circular motion.pdf");
}

void draw(){ 
  stroke(255);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  point(x(t), y(t));
  t++;
  
    PGraphicsPDF pdf = (PGraphicsPDF) g;  // Get the renderer

    // When finished drawing, quit and save the file
  if (frameCount == 100) {
    exit();
  } else {
    pdf.nextPage();  // Tell it to go to the next page 
  }
}


float x(float t){
  return sin(t/10)* 100+ sin(t/15)*100;
}

float y(float t){
  return cos(t/10) * 100;


}