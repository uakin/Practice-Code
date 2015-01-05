class Cloud { 
  //declare var.
  PVector loc;
  float sz;
  PImage cl;
  //intailized properties
  Cloud () {
    cl = loadImage("Happy Cloud.png");
    loc = new PVector (mouseX, mouseY);
    sz = 200;
  }
  //define the meathods
  //Make the Cloud Display
  void display () {
    image (cl, mouseX/1.2, mouseY/1.2, sz, sz);
  }
//make the cloud make the particles stop
  boolean cover (Particles goAway) {
    if (loc. dist(goAway. loc) < (sz/2 + (goAway. sz/5))) {
      return true;
    } else {
      return false;
    }
  }
}

