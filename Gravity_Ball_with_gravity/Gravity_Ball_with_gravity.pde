float locX, locY;
int sz = 20;
float velX, velY;
float aclX, aclY;
float gravity;

void setup () {
  size (800, 800);
  locX = width/2;
  locY = sz;
  velX = 2;
  velY = 0;
  aclY = .001;
  gravity = .01;
}
void draw () {
  velX += aclX;
  velY += gravity;

  locX += velX;
  locY += velY;

  ellipse (locX, locY, sz, sz);
  if (locY + sz/2> height) {
    locY = height - sz/2;
    velY*=-.75;
    velX *= .99;
  }
  if( locX + sz/2 > width) {
    velX =-abs(velX) * .9;
  }
  if (locX - sz/2 < 0) {
    velX = abs(velX) * .9;
  }
}

