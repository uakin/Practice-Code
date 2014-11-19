float locx, locy;
float velx,vely;
float accx, accy;
float sz = 20;

void setup () {
 size (600,600);
locx = width/2;
locy = height/2;
velx = 0;
vely = 0;
accx = 0;
accy = 0;
}
void draw () {
  accx = random (-.2, .2);
  accy = random (-.2,.2);
  
  velx += accx;
  vely += accy;
  
  velx = constrain (velx, -5,5);
  vely = constrain (vely, -5, 5);
  
  locx += velx;
  locy += vely;
  ellipse (locx,locy,sz,sz);
  
  if(locx - sz/2 > width) {
    locx = -sz/2;
  }
  if(locx + sz/2 < 0){
  locx = width + sz/2;
}
if(locy - sz/2 > height) {
  locy = -sz/2;
}
if(locy + sz/2 < 0) {
  locy = height + sz/2;
}
}
