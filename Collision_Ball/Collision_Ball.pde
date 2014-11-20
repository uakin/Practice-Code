float sz = 30;
PVector loc;
void setup() {
  size (600, 600);
  loc = new PVector (width/2, height/2);
}

void draw() {
  background (0);
  if (dist (mouseX, mouseY, loc.x, loc.y) < sz/2) {
    fill(200, 100, 0);
    loc.x = random(width) ;
    loc.y = random(height);
  } else {
    fill(100, 200, 200);
  }
  ellipse (loc.x, loc.y, sz, sz);
}

