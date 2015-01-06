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
  //define the methods
  //Make the Cloud Display
  void display () {
      image (cl, loc.x, loc.y, sz, sz);
  }
  //make the cloud make the particles stop
  boolean cover (PVector o) {
    if (loc.dist(o) < sz/2) {
      return true;
    } else {
      return false;
    }
  }
  
  void update(){
   loc.set (mouseX, mouseY); 
  }
}

