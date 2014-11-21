float sz = 100;
PVector loc;
PVector acc;
PVector vel;
PVector loc2;
PVector acc2;
PVector vel2;
float sz2 = 150;
void setup() {
  size (600, 600);
  loc = new PVector (width/2, height/2);
  acc = new PVector (0, 0);
  vel = PVector. random2D ();
  loc2 = new PVector (random(sz2, width-sz/2), random(sz2, height-sz/2));
  vel2 = PVector. random2D ();
  acc2 = new PVector (0, 0);
}

void draw() {
  background (0);

  vel. add(acc);
  loc. add(vel);
  vel2. add(acc2);
  loc2. add(vel2);


  if (loc. dist(loc2) < sz/2 + sz2/2) {
    fill(200, 100, 0);
    if (loc.x < loc2.x) {
      vel.x = -abs(vel.x);
      vel2.x = abs(vel2.x);
    } else {
      vel.x = abs(vel.x);
      vel2.x = -abs(vel2.x);
    }
    if (loc.y < loc2.y) {
      vel.y = -abs (vel.y);
      vel2.y = abs(vel2.y);
    } else {
      vel.y = abs(vel.y);
      vel2.y =-abs(vel2.y);
    }
  } else {
    fill(100, 200, 200);
  }
  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }
  if (loc2.x + sz2/2 > width || loc2.x - sz2/2 < 0) {
    vel2.x *= -1;
  }
  if (loc2.y + sz2/2 > height || loc2.y - sz2/2 < 0) {
    vel2.y *= -1;
  }
  ellipse (loc.x, loc.y, sz, sz);
  ellipse (loc2.x, loc2.y, sz2, sz2);
}


