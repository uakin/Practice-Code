class Particles {
  //declare PVectors
  PVector loc, vel, acc;
  //declare size,hue,sat,life,brit,decay
  float sz;
 float hue;
float life;
float sat;
float brit;
  float decay;
  Particles() {
    //intiallize varibles
    loc = new PVector (80,60);
    vel = new PVector (random(0, 1), random(0, 1));
    acc = new PVector (random(0, .15), random(0, .15));
    sz = random(10,50);
    life = 255;
    decay= 1.5;
    hue = 55;
//change the satuturation of the yellow
    sat = random (85,100);
    brit = random (80,100);

  }
  //make it appear
  void display () {
    noStroke();
    ellipse (loc.x, loc.y, sz, sz);
    //Give it a fill
    fill(hue,sat,brit, life);
  }
  //make it move
  void move () {
    loc. add (vel);
    vel. add (acc);
  }
  //give it a color
  void fills () {
    colorMode (HSB,360,100,100,100);
    fill(hue,sat,brit,life);
  }
  boolean begone () {
    //tell if the balls are off the screen. Removes in the code.
    if ( loc.y - sz/2> height||loc.y+sz/2<0) {
      return true;
    } else {
      return false;
    }
  }
//make opacity decrease
  void update() {
    life-=decay;
  }
}

