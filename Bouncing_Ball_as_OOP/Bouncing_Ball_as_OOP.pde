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

class Ball {
  float sz;
  PVector loc, vel; 
  //imntialized properties
  Ball (float tempsz) {
    sz = tempsz;
    loc = new PVector (width/2, height/2);
    vel = PVector. random2D ();
  }

  void display() {
    ellipse (loc.x, loc.y, sz, sz);
 }

  void move() {
    loc. add (vel);
  }

  void bounce () {
    if (loc.x + sz/2 > width || loc.x-sz/2 <0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y -sz/2 <0) {
      vel. y *= -1;
    }
  }
  void collison (Ball someOtherBall ) {
    if (loc. dist (someOtherBall. loc) < sz/2 + someOtherBall. sz/2)
      vel = PVector. sub (loc, someOtherBall.loc);
    vel. normalize ();
  }
}
