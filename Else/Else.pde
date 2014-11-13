void setup() {
  size( 400, 400);
}
void draw () {
  rect (100, 100, 100, 100);
  if (mouseX > 100 && mouseX < 200 && mouseY >100 && mouseY <200)
    fill (0, 255, 0);
}
else {
  fill (0, 0, 255);
}
