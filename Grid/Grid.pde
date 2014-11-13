
void setup () {
  size (500, 500);
}
void draw () {
  for (int y=0; y<height; y+=20) {
    line (0, y, width, y);
    for (int x=0; x<width; x+=20) {
      line (x, 0, x, height);
    }
  }
}

