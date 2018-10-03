String additionSentence; 
int n1, n2;
void setup(){
  size(500, 500);
  println(addition(4, 5)); //only one number comes out bc println is in void setup
}

void draw(){
//  sum(10, 50);

//}

//  void sum(int num1, int num2){
//  println(num1 + num2);
  
  //first number + second number = sum
  
  background(0);
  additionSentence = n1 + "+" + n2 + "=" + addition(n1, n2);
 text(additionSentence, width/2, height/2);
textSize(50);
}
void mousePressed(){
  n1 = int (random (0, 10));
  n2 = int (random(0, 10));
}

int addition (int a, int b){
  int sum = a + b; 
  return sum;
}
//create an integer function, that adds two numbers, and returns the sum