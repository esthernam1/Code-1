//Car multiple[] = new Car[5];
ArrayList<Car> cars;

color carColor;

void setup() {
  size(500, 400);
  noStroke();
carColor = color(random(0, 255),random(0, 255),random(0, 255));

  cars = new ArrayList<Car>();

  //for (int i=0; i<cars.size(); i++) {
  //  cars[i] = new Car (random(10, 100), random(50, 100));
  //}
}
void draw() {
  background(135, 200, 220);
  fill(215, 200, 100);
  rect(0, height/1.8, 500, 500);
  //for (int i=0; i<multiple.length; i++) {
  //  multiple[i].display(100+ i*10, color(200, i*50, 10));
  //  multiple[i].drive();
  //}
  for (int i=0; i<cars.size(); i++) {
    Car c = cars.get(i);
    c.gravity();
    c.display(carColor);
    c.drive();
    if(c.position.x >= width){
      cars.remove(i);
    }
  }
  println(cars.size());
}
void mousePressed() {
  cars.add(new Car());
}
