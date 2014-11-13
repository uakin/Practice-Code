float x;
float y;
float number;
void setup() {
  size (500, 500);
  noStroke();
  number = random (10,70);
 
}
void draw() {
  background (200);
  fill (map(mouseX, 0, width, 0, 255), map(mouseY, 0,height,0,255), mouseY);
  ellipse (x, 50, 50, 50);
  x = x + 2.5;
  ellipse (50,y,30,30);
  y=y+2.3;
  rect (x,y,50,50);
  ellipse (x,y,x,y);
}

