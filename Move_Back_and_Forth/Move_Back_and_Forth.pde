float speed;
float x;
float y;
float speedy;
void setup() {
  size (500, 500);
  speed = 2;
  speedy = 2;
  x = 0;
  y = 0;
  
}
void draw() {
  background (255);
  ellipse (x, y, 20, 20);
  x = x + speed;
  y = y + speedy;

if (x>width) {
  speed = -2;
  speedy = -2;
}
if (x == 0) {
  speed = 2;
  speedy = 0;
}
if (x > 500) {
 speedy = -2; 
 speed = 0;
}
}
