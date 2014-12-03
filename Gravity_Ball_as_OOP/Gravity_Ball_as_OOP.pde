GravityBall [] b = new GravityBall [50];
void setup() {
  size (600, 600);
  for (int y= 0; y < b.length; y++) {
    b[y] = new GravityBall();
  }
}

void draw () {
  background(0);
  for (int y = 0; y < b.length; y++) {
    b[y]. display();
    b[y]. move ();
    b[y]. bounce ();
  }
}

class GravityBall {
  float sz;
  PVector loc, vel, acc;

  GravityBall () {
    sz = 50;
    loc = new PVector (random(sz/2,width-sz/2), random (50,200));
    vel = new PVector (0, 0);
    acc = new PVector (0, .1);
  }
  void display () {
    ellipse (loc.x, loc.y, sz, sz);
  }
  void move () {
    vel. add (acc);
    loc. add (vel);
  }
  void bounce () {
    if (loc.y + sz/2 > height) {
      vel.y = -abs(vel.y);
      loc.y = height - sz/2;
    }
  }
}

