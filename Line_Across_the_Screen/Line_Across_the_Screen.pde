int y = 0;
void setup () {
  size (500, 500);

}
void draw () {
  while (y < height) {
    line (0, y, width, y);
    y += 20;
  }
}
