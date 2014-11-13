int [] x = {100,200,300,400};
int [] y = {100,120,130,401};
int [] sz = {40,10,20,70};
int [] xspeed = {1,2,5,4};
int [] yspeed = {2,3,1,-2};

void setup () {
  size (800,800);
}

void draw () {
  background (0);
  for (int i = 0; i < x.length; i++) {
    fill(150,100,200);
    ellipse (x[i], y[i], sz[i],sz[i]);
    x[i] += xspeed[i];
    y [i] += yspeed[i];
    
    if (x[i] + sz[i]/2 > width || x[i] < 0) {
      xspeed[i] = -xspeed[i];
    }
    if (y[i] + sz[i]/2 > height || y[i] < 0) {
      yspeed[i] = -yspeed[i];
    }
  }
}
