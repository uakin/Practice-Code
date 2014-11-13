int w = 30; 
int h = 30;
void setup () {
  size (500, 500);
}
void draw () {
  for (int x = 0; x < width; x +=w) {
    for (int y = 0; y < height; y += h) {
      if (mouseX> x && mouseX <x+w && mouseY>y && mouseY <y +h) {
        fill (255, 0, 0);
      }
      else {
        fill (100);
      } 
      rect (x, y, w, h);
    }
  }
}

