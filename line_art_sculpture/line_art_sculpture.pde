 import processing.pdf.*;
int numPoints = 27;

PVector[] points = new PVector[numPoints];

void setup()
{
    size( 600, 700, PDF, "filename.pdf" );
    
    for (int i = 0; i < numPoints; i++) {
        points[i] = new PVector( random(width), random(height) );
    }
    
    //noLoop();
    
}

void draw()
{
    smooth();
    background(255);
    noFill();
    
    for (int i = 0; i < numPoints; i++) {
        for (int j = 0; j < numPoints; j++) {
            strokeWeight(1);
            if ( j != i ) {
                float dst = dist( points[i].x, points[i].y, points[j].x, points[j].y );
                if ( dst < 255 ) {
                    stroke( 12, 27, 51);
                    line( points[i].x, points[i].y, points[j].x, points[j].y );
                }                
            }
        }
        stroke( 12, 27, 51 );
        strokeWeight(1);
        point( points[i].x, points[i].y );
    }  
  
  println("Finished.");
  exit();
}