class Particles {
  //declare PVectors
  PVector loc, vel, acc;
  //declare size
  float sz;
 float hue;
float life;
float sat;
float brit;
  float decay;
  Particles() {
    //intiallize varibles
    loc = new PVector (width/2,height/2);
    vel = new PVector (random(-1, 1), random(-1, 1));
    acc = new PVector (random(-.1, .15), random(-.2, .15));
    sz = random(10,50);
    life = 255;
    decay= 1.5;
    hue = 55;
    sat = random (85,100);
    brit = random (80,100);

  }
  //make it appear
  void display () {
    noStroke();
    ellipse (loc.x, loc.y, sz, sz);
    fill(hue,sat,brit, life);
  }
  //make it move
  void move () {
    loc. add (vel);
    vel. add (acc);
  }
  void fills () {
    colorMode (HSB,360,100,100,100);
    fill(hue,sat,brit,life);
  }
  boolean begone () {
    if ( loc.y - sz/2> height||loc.y+sz/2<0) {
      return true;
    } else {
      return false;
    }
  }
  void update() {
    life-=decay;
  }
}

