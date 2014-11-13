int dist = 20;
int distChange = -20;
void setup() {
  size (500, 500);
}
void draw() {
 dist ++ ;
  for (int y = 0; y < height; y+=dist)
    rect (0, y, width, dist);
  if (dist > height) {
   dist = distChange;
}
}
