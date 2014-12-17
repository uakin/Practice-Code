ArrayList <Particles> ps = new ArrayList <Particles>();
void setup () {
  size (500, 500);
//  colorMode (HSB, 360, 100, 100, 100);
//  noStroke();
}

void draw () {
  background (0);
  ps.add (new Particles());
  for (int i = ps.size () - 1; i > 0; i--) {
    Particles p2 = ps. get (i);
    p2. display();
    p2.fills();
//    p2. move();
    p2.update();
    if (p2.begone ()) {
      ps.remove(i);
    }
  }
}

