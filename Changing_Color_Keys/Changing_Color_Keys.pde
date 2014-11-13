int w = 20;
int dist = 10;
void setup () {
  size (500, 500);
}
void draw () { 
  for  (int i = 0; i < width; i +=w) {
    if ( mouseX > i && mouseX < i+w) {
      fill (200,0,150);
    } else { 
      fill (150);
    }
    rect (i, 0, w, height);
  }
  for (int k = 5; k < width; k += dist) {
    if (mouseX > k && mouseX < k+dist) {
      fill (0,0,100);
    } else {
      fill (0);
      
}

