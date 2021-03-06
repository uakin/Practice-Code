//No longer a 'Black Hole', but does work for making the object grow
class BlackHole { 
  //declare var.
  PVector loc;
  float sz;
  //tree image for black hole
  PImage tr;
  //intailized properties
  BlackHole () {
    tr = loadImage("Tree.png");
    loc = new PVector (width/1.6, height/1.6);
    sz = 50;
  }
  //define the meathods
  //Make the Tree Display
  void display () {
    image (tr, loc.x, loc.y, sz, sz);
  }
  //Make the black hole (tree) recoginze the particles
  //when it is touched.
  boolean consume (Particles food) {
    if (loc. dist(food. loc) < (sz/2 + (food. sz/2))) {
      return true;
    } else {
      return false;
    }
  }
  //Make the black hole grow.
  void grow() {
    //make it stop growing at a certian size
    if (sz <190) {
      sz+=.05;
    }
  }
}

