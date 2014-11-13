int  x = 100;
int  y = 100;
int distx=100;
int  disty = 100;
void setup() {
  size (500, 500);
}
void draw () {
  background (255);
  if (mouseX > x && mouseX < x + distx && mouseY > y && mouseY < y + disty) {
    fill (200,100,200);
    rect (x+200, y+100, distx, disty);
  } else 
    rect (x, y, distx, disty);
    fill (255,0,100);
}

