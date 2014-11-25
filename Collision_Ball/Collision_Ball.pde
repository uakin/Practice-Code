int count = 2;

float [] sz =new float [count];
PVector [] loc= new PVector [count];
PVector [] acc = new PVector [count]; 
PVector [] vel = PVector [count];

void setup() {
  size (600, 600);
  for (int i = 0; i < count; i++) {
    sz[i] = random (60,100);
    loc [i]= new PVector (random (sz[i], width - sz[i]), random(sz[i], height - sz [i]));
    acc [i] = new PVector (0,0);
    vel [i] = new PVector (0,0);

  }
}
void draw() {
  background (0);
for (int i = 0; i < count; i++){
  vel[i]. add(acc[i]);
  loc[i]. add(vel[i]);
for (int j = 0; j < count; j++) {
  if (i!=j);
  if (loc[i]. dist(loc[j]) < sz[i]/2 + sz[j]/2) {
    fill(200, 100, 0);
    if (loc[i].x < loc[j].x) {
      vel[i].x = -abs(vel[i].x);
      vel[j].x = abs(vel[j].x);
    } else {
      vel[i].x = abs(vel[i].x);
      vel[j].x = -abs(vel[j].x);
    }
    if (loc[i].y < loc[j].y) {
      vel[i].y = -abs (vel[i].y);
      vel[j].y = abs(vel[j].y);
    } else {
      vel[i].y = abs(vel[i].y);
      vel[j].y =-abs(vel[j].y);
    }
  } else {
    fill(100, 200, 200);
  }
  if (loc[i].x + sz[i]/2 > width || loc[i].x - sz[i]/2 < 0) {
    vel[i].x *= -1;
  }
  if (loc[i].y + sz[i]/2 > height || loc[i].y - sz[i]/2 < 0) {
    vel[i].y *= -1;
  }
  if (loc[j].x + sz[j]/2 > width || loc[j].x - sz[j]/2 < 0) {
    vel[j].x *= -1;
  }
  if (loc[j].y + sz[j]/2 > height || loc[j].y - sz[j]/2 < 0) {
    vel[j].y *= -1;
  }
  ellipse (loc[i].x, loc[i].y, sz[i], sz[i]);
}


