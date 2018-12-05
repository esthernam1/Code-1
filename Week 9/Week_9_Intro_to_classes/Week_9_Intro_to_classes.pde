//how to define a class
//name ex. class Superhero{
//data String realName; 
//methods void protectPeople(){}
//constructor power = "invisibility" 

//Plant daryl;
//Plant eugene;
Plant garden[] = new Plant[10];

void setup() {
  size(700, 500);

  //daryl = new Plant (int(random(100, 400)));
  //eugene = new Plant (int(random(100, 400)));
 
  noStroke();
  for (int i=0; i<garden.length; i++) {
   garden[i] = new Plant(int(random(10, width)),int(random(100, width)));
  }
}

void draw() {
  background(255);
  //eugene.display(10, 4, color(0, 150, 50));
  //daryl.display(100, 10, color(0, 255, 10));
  
  for(int i=0; i<garden.length; i++){
  garden[i].display(2+i*3, color(10, i*20, 50));
   garden[i].grow();
   println(garden[0].plantHeight);
  }
}
