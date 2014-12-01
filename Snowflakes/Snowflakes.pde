int count = 100;
PVector loc, vel, acc;
float sz = new float [count];

void setup() {
  for (int i = 0; i < count; i++) {
    loc[i] = new PVector (width/2, random (-height, height));
    vel [i] = new PVector (0, 1);
    acc[i] = new PVector (0, .01);
    sz =

  }
  noStroke();
}
  void draw() {
    background (100,200,0);
    for (int i = 0; i < count; i++){
    acc[i].x (-.1,.1);
    vel[i]. add (acc[i]);
    loc[i]. add (vel[i]);
   ellipse (loc[i].x, loc[i].y, sz[i],sz[i]); 
  }
  }

