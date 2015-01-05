class Cloud { 
  //declare var.
  PVector loc;
  float sz;
  PImage cl;
  int count;
  float z, c;
  //intailized properties
  Cloud (float x, float y) {
    cl = loadImage("Happy Cloud.png");
    loc = new PVector (mouseX, mouseY);
    sz = 200;
    count =2;
    float[]z = new float [count];
    float[]c = new float [count];
  }
  //define the meathods
  //Make the Cloud Display
  void display () {
    for (int i = count -1; i >= 0; i--) {
      image (cl, loc.x, loc.y, sz, sz);
    }
  }
  //make the cloud make the particles stop
  boolean cover (PVector o) {
    if (loc.dist(o) < sz/2) {
      return true;
    } else {
      return false;
    }
  }
}

