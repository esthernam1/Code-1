void setup(){
size(400, 300);
background(0);
strokeWeight(2);
stroke(255);
}
//int x = 0;
//while (x < width){
//    line(x, 0, x, height);
//    x = x + 50;
//}
//int y = 0;
//while (y < height){
//    line(0, y, width, y);
//    y = y + 50;
//}
void draw(){
 for(int x = 0; x < width; x = x + 50){
   line(x, 0, x, height);
 }
 
 for(int y = 0; y < height; y = y + 50){
   line (0, y, width, y);
 }
 
 
}