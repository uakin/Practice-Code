     float hue = 0;
Ball [] b = new Ball [20]; //declare a neww obect of the ball class

void setup() {
  size (800, 600);
  colorMode (HSB, 360,100,100,100);

  for (int i = 0; i < b. length; i++) {
    b[i] = new Ball (random (2,80));
  }
}
void draw () {
  background (0);

    hue++; 
    fill (hue%360,100,100);

  for (int i = 0; i < b. length; i++) {
    b[i].move();
    b[i].bounce();
    b[i].display ();
    for (int j = 0; j < b. length; j++) {
      if (i!= j) {
        b[i]. collison(b[j]);
      }
    }
  }
}


