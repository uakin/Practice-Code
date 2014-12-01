int count = 100;
PVector[] loc = new PVector [count];
PVector [] vel = new PVector [count];
PVector [] acc = new PVector [count];
float [] sz = new float [count];

void setup() {
  for (int i = 0; i < count; i++) {
    loc[i] = new PVector (width/2, random (-height, height));
    vel [i] = new PVector (0, 1);
    acc[i] = new PVector (0, .01);
    sz[i] = random (2,5);
  }
  noStroke();
  fill (255,200);
}
  void draw() {
    background (100,200,0);
    for (int i = 0; i < count; i++){
    acc[i].x = random(-.1,.1);
    vel[i]. add (acc[i]);
    loc[i]. add (vel[i]);
   ellipse (loc[i].x, loc[i].y, sz[i],sz[i]); 
   if (loc[i].y - sz[i]/2 > height) {
     lic[i]. set(random(width), random (-height, -sz[i]/s));
     vel[i]. set (0,1);
  }
  }

