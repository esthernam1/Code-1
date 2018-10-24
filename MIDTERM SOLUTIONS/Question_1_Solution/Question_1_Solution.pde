// Fix all the syntax errors so the code runs.

void setup() {
  // we'll create a counter variable to count the frames


  String welcomeMsg = "welcome to the first midterm question!";
  println(welcomeMsg);
  
  boolean isCodeGreat = true;

  println("now we'll do a loop and print the iterating value!");
  for (int i = 0; i < 3; i++) {
    println("this is loop number " + i);

    float floatArray []= new float [100];
    println("there are " + floatArray[i] + " positions in floatArray");
  }
}
void draw() {
  // we'll increment counter every frame until 60, then reset
  int counter = 0;
  if (counter<=60) {
    counter++;
  } else {
    counter = 0;
  }
}