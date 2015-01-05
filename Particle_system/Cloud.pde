class Cloud { 
  //declare var.
  PVector loc;
  float sz;
  PImage cl;
  //intailized properties
  Cloud () {
    cl = loadImage("Happy Cloud.png");
    loc = new PVector (80, 60);
    sz = 200;
  }
  //define the meathods
  //Make the Cloud Display
  void display () {
    image (cl, loc.x, loc.y, sz, sz);
  }
//make the cloud make the particles stop
  boolean cover (Particles goAway) {
    if (loc == goAway.loc) {
      return true;
    } else {
      return false;
    }
  }
}

