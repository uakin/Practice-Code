String s = "Frozen!";
void setup () {
  size (600,500);
  textSize (100);
}
void draw () {
background (200);
text (s, 20, 100);
}

void mousePressed () {
  s = "Big Hero Six!";
}
