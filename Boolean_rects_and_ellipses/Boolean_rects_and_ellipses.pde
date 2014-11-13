boolean shape = true;
void setup () {
  size (600,500);
}
void draw () {
  if (shape == true) {
    rect (random (width), random (height), 20,20);
  }
  else {
    ellipse (random (width), random (height), 20, 20);
  }
}
  void mousePressed () {
    background (100);
    shape = !shape;
  }
