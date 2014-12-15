ArrayList <Particles> ps = new ArrayList <Particles>();
void setup () {
  size (500, 500);
}

void draw () {
   background (0);
  ps.add (new Particles());
  for (int i = ps.size () - 1; i > 0; i--) {
    Particles p2 = ps. get (i);

    p2. display();
    p2. move();
  }
}

  class Particles {
    PVector loc, vel, acc;
    float sz;

    Particles() {
      loc = new PVector (width/2, 100);
      vel = new PVector (-2, 2);
      acc = new PVector (0, .2);
      sz = 20;
    }
    void display () {
      ellipse (loc.x, loc.y, sz, sz);
    }
    void move () {
      loc. add (vel);
      vel. add (acc);
    }
  }

