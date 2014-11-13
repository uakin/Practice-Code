float  x = random (50,width);
float  y = random (50,height);
float distx= random (30,width/2);
float  disty = random (30, height/2);
void setup() {
  size (500, 500);
}
void draw () {
  background (0);
  if (mouseX > x && mouseX < x + distx && mouseY > y && mouseY < y + disty) {
    x = (random (30,width) - distx);
    y = (random (30,height) - disty);
  } else 
    rect (x, y, distx, disty);
}

