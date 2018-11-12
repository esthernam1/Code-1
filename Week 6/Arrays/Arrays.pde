int myIntegerArray [] = {1, 2, 3, 4, 5};

String myStringArray [] = {"whatever", "we", "want"};

int newArray [] = new int [4]; //{, , , , ,} new function creates new empty slots

void setup(){
 println (myIntegerArray [4]);
 
  println (myStringArray [1]);
  
  for(int i = 0; i<3; i++){
    println (myStringArray[i]); //prints the string in increments i++ from 0
  }
  
  newArray [0] = 3;
  newArray [3] = 5;
   
   for (int i = 0; i<4; i ++){
     println(newArray [i]);
   }
}