boolean shape = true;
void setup () {
  size (600,500);
}
void draw () {
  if (shape == true) {
    fill (200,100,150);
    background (100);
    rect (random (width), random (height), 20,20);
  }
  else {
    background (255);
    fill (100,150,200);
    ellipse (random (width), random (height), 20, 20);
  }
}
  void mousePressed () {
    shape = !shape;
  }
