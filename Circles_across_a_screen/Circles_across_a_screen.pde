float x = 29;
float y = 10;
void setup() {
  size (600, 500);
}
void draw() {

  while (x < width) {
    ellipse (x, height/2, 50, 50);
    x+= 60;
  }
}

