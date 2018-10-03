int gumball;
int gumballSize;
int gumballMachine;
int groundPosition;
int crank;
int x;
int y;
color value;
int size;
 int trianglex= 315, triangley= 350;
int angle = 0;


void setup() {
  size(500,500);
  background(250); 
 
  gumballMachine = 200;
  gumball = 300;
  gumballSize = 55;
  groundPosition = 300;
  crank = 20;
  x = width/3;
  y = height/3;
  int mouse;
   value = 0;
   size= 10;
   
   
   
}

void draw(){
  int Xmouse = mouseX;
  int Ymouse = mouseY;
  fill(238,232,170);
  rect(0, 0, width, height); //  background
  
  fill(25,25,112);
  rect(0, groundPosition, width, height); //  foreground

  
  fill(220,220,220);
  noStroke();
  ellipse(gumball +20, gumball -140, gumball-45, gumball-45); //  large circular holder of gumballs
  
  fill(245,222,179);
  ellipse(gumball, gumball-78, gumballSize, gumballSize); //  gumballs
  
  fill(219,112,147);
  ellipse(gumball-57, gumball-78, gumballSize, gumballSize); //  |
  
  fill(65,105,225);
  ellipse(gumball +57, gumball-78, gumballSize, gumballSize); //  |
  
  fill(138,43,226);
  ellipse(gumball +110, gumball-100, gumballSize, gumballSize); //  |
  
  fill(255,215,0);
  ellipse(gumball +66, gumball-133, gumballSize, gumballSize); //  |
  
  fill(255,140,0);
  ellipse(gumball +10, gumball-133, gumballSize, gumballSize); //  |
  
  fill(102,205,170);
  ellipse(254, 167, gumballSize, gumballSize); //  |
  
  fill(218,112,214);
  ellipse(228, 119, gumballSize, gumballSize); //  |
  
  fill(240,230,140);
  ellipse(283, 118, gumballSize, gumballSize); //  |
  
  fill(60,179,113);
  ellipse(gumball +38, 118, gumballSize, gumballSize); //  |
  
  fill(220,20,60);
  ellipse(418, 145, gumballSize, gumballSize); //  |
  
  fill(135,206,250);
  ellipse(391, 97, gumballSize, gumballSize); //  gumballs



  fill(178,34,34);
  noStroke();
  rect(gumballMachine +15, gumballMachine +50, gumballMachine +10, gumballMachine-20); //  main body of machine(with the crank on it)
  rect(gumballMachine, gumballMachine +190, gumballMachine +40, gumballMachine-100); //  rect below main body
  
  fill(0);
  ellipse(320, 445, gumballSize, gumballSize); //  slot where gumball comes out top ellipse 
  rect(292, 440, gumballSize, gumballSize-5); //  gumball exit slot bottom rect
 
 fill(178,34,34);
  triangle(200, 490, 200, 390, 160, 490); //  side of bottom rect(left)
  triangle(440, 390, 480, 490, 440, 490); //  side of bottom rect (right)
    
    
    
  fill(255,215,0);
  ellipse(25, 480, 200, 200); //  actual gumball in front(probs fell out of the machine) ;(
  fill(255,165,0);
  ellipse(30, 500, 193, 194);
  fill(255);
  ellipse(70, 430, 15, 15);
  ellipse(95, 460, 15, 45);
  
  fill(0); 
  ellipse( 135, 90, 110, 25); //  bottom ellipse of spaceship
  ellipse(135, 80, 55, 25); // top of spaceship
  

  
 
  fill(value, 50);
 ellipse(135, 340, 70, 20); // abduction circle
  fill(value, 50);
  quad(150, 102, 120, 103, 100, 340, 170, 340); //abduction light
  fill(169, 169, 169);
  rect(285, 310, 75, 80); //rect with crank(aka triangles)
  
  fill(178,34,34);
  rect(220, 25, 190, 30); //lid on top
  
  
 pushMatrix();
 translate(trianglex, triangley);
 rotate(degrees(mouseX));
 fill(0);
 //TRIANGLEX=315
 //TRIANGLEy=350
  triangle(0,0, 0-65, 0-5, 0-65, 0+5); //turning crank (left triangle)
  fill(0);
  triangle(0+15, 0, 0+85, 0-5, 0+85, 0+10); //turning crank (right triangle)
  popMatrix();
  
  
  pushMatrix();
  translate(width*.65, height*.7);
  fill(0);
  ellipse(0, 0, crank, crank); //circular center of crank
  ellipse(x+5, y-15, crank, crank);
  popMatrix();
  
 pushMatrix();
   scale(2);
    translate(-65, -80);
   fill(220,20,60);
   ellipse(135, 180, crank+size, crank+size); //gumball being abducted
   
   
 popMatrix();
}
void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      size += 1; 
      //size ++; 
    }
    if(keyCode == DOWN){
      size --; 
    }
  }
}
void mousePressed() {
  //if (value == 0) {
  //  value = 255;
  //} else {
  //  value = 0;
  //}
  value = color (random(0,255),random(0,255),random(0,255));
  
  }