float x = 100;
float y = 100;
float distx = 50;
float disty = 50;
void setup () {
  size (300, 300);
}
void draw () {
  background (0);
  rect (x, y, distx, disty);
  if (mouseX > x && mouseX< x + 50 && mouseY > y && mouseY < y + 50) {
distx = 0;
disty = 0;
  }
  else 
  distx = 50;
  disty = 50;
}
