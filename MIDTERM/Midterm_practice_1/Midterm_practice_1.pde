//create a button that generates the product of two random integers
//the multiplication sentence should be displayed somewhere on the screen 

//the sketch is started for you, but isn't quite right 

int x, y; 
int size; 
float dist; 
boolean buttonClicked; 
int num1, num2; 
String answer;
float result;
void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 
 
}

void draw(){
  background(0);
  
   if (buttonClicked){
    fill(0, 0, 255);
    } else {
       fill(255, 0, 0); 
     }
   ellipse(x, y, size, size);
  
int result = multiply(num1, num2); 


//string shouldnt have same name as float

    String answer = num1 + " x " + num2 + " = " + result; 
    textSize(32);
    text(answer, 0, height*.8);
    println(answer);
    
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2){
    buttonClicked = true; 
    
   num1 = int(random(0,100)); 
   num2 = int(random(0,100)); 
  }
}

int multiply(int a, int b){
    int product;
    product = (a * b); 
    return product;
}