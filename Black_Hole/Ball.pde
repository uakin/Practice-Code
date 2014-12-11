class Ball {
  float sz;
  PVector loc, vel; 
  //intialized properties
  Ball (float tempszx,float tempszy, float tempsz) {
    sz = tempsz;
    loc = new PVector (tempszx,tempszy);
    vel = PVector. random2D ();
  }

  void display() {
    fill(360);
    ellipse (loc.x, loc.y, sz, sz);
 }

  void move() {
    loc. add (vel);
  }

  void bounce () {
    if (loc.x + sz/2 > width || loc.x-sz/2 <0) {
      vel.x *= -1;
   
    }
    if (loc.y + sz/2 > height || loc.y -sz/2 <0) {
      vel. y *= -1;
    }
  }
  void collison (Ball someOtherBall ) {
    if (loc. dist (someOtherBall. loc) < sz/2 + someOtherBall. sz/2){
      vel = PVector. sub (loc, someOtherBall.loc);
    vel. normalize ();

  }
}
}
