float locX, locY;
int sz = 20;
float velX, velY;
float aclX, aclY;
float gravity;

void setup () {
  size (800, 800);
  locX = width/2;
  locY = sz;
  velX = 0;
  velY = 0;
  aclY = .001;
  gravity = .005;
}
void draw () {
  velX += aclX;
  velY += gravity;

  locX += velX;
  locY += velY;

  ellipse (locX, locY, sz, sz);
  if (locY + sz/2> height) {

    velY*=-1;
  }
}

