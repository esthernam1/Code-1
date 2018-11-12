///make functions for: INT,(DID FLOAT INSTEAD)done)) BOOLEAN, STRING(done), VOID(done)
//use map function to change fill based on shape distance(done)
//use LERP function --linear interpolation(done)
//image goal: match(rect) to collect the circles(fire)
//when mousepressed, hover match to fire around canvas
//when mouse is moving(mouseX,mouseY) change bgColor or match color
//incorporates instructions with string function in console

int r, g, b; //for color mapping 
int size = 35;
color bgColor;
int range;
int circle;
float blackx =210;
float blacky =255;
float new1;
float new2;

float distance;

float point1 = mouseX;
float point2 =mouseY;

float originx1 = 0;
float originy1 = 0;
float originx2 = 0;
float originy2 = 0;
float originx3 = 0;
float originy3 = 0;

void setup(){
  size(300, 300);
}

void draw(){ 
  background(bgColor);
  //range = int(map(calcDistance(mouseX, mouseY), 0, width, 0, 100));
  //g = int(map(calcDistance(xPos, yPos), 0, width, 0, 100));
 
  bgColor = color(range, 100, g);
  
    println(calcDistance(210, 255));  

 //another option for color mapping
  range = int(map(mouseX, 0, width, 0, 250));
      g = int(map(mouseY, 0, width, 0, 250));
      b = int(map(200, 0, height, 0, 250));

  fill(0);
  rect(blackx, blacky, size/2, size/2); //black rect by text
  
  fill(139,69,19);
  noStroke();
  rect(point1, point2, 15, 100); //brown match

  fill(255, 0, 0, 130); //red
  originx1 = lerp(originx1, new1, 0.08);
  originy1 = lerp(originy1, new2, 0.08);
  ellipse(originx1, originy1, size, size);
  
   fill(255, 140, 0, 150); //orange
  originx2 = lerp(originx2, new1, 0.06);
  originy2 = lerp(originy2, new2, 0.06);
  ellipse(originx2, originy2, size-5, size-5);

  fill(255,215,0, 120); //yellow
  originx3 = lerp(originx3, new1, 0.04);
  originy3 = lerp(originy3, new2, 0.04);
  ellipse(originx3, originy3, size-15, size-15);
 
  
inst("match," , "meet fire"); //with string function
 
point1 = lerp(point1, mouseX, 1);
point2 = lerp(point2, mouseY, 1); 
 
 String t = "give the match some fire "; 
 fill(255);
 text(t, 10, 270);
 textSize(16);
 
 float value = calcDistance(blackx,blacky);
 
  boolean square = isInsideSquare(value);
    print(square);
    
}
//float function
 float calcDistance(float shapeX, float shapeY){
   float dist = dist(mouseX, mouseY, shapeX, shapeY);
   return dist;
 }
//string function (i think)
 void inst(String string1, String string2){
    println(string1 + "\n" + string2);
}
  
  boolean isInsideSquare( float distance){
    if (distance<size/2){
      return true;
  }else{
    return false;
  }
  }
  
  void mousePressed(){
   new1 = mouseX;
   new2 = mouseY;
  }