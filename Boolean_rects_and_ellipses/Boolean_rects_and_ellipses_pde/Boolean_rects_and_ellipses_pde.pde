boolean shape = true;
void setup () {
  size (600,500);
  noStroke ();
}
void draw () {
  if (shape == true) {
        
    fill (200,100,150);
    rect (random (width), random (height), 20,20);
  }
  else {
    fill (100,150,200);
    ellipse (random (width), random (height), 20, 20);
  
  }
}
  void mousePressed () {
    background (200);
    shape = !shape;
  }
