void setup() {
  size(600, 600);
}

void draw() {
  background(20);

  fill(255);

  //float hourPos = 
  //rect(hourPos, 

  //float minutePos = 
  //rect(minutePos, 

  float secondPos = map(second(), 0, 60, 0, width);
  float minutePos = map(minute(), 0, 60, 0, width);
  float hourPos = map(hour(), 0, 60, 0, width);
  rect(secondPos, 400, width/60, 600);
  rect(minutePos, 200, width/60, 200);
  rect(hourPos, 0, width/30, 200);
}