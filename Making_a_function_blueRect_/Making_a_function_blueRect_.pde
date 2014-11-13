void setup() {
  size (800,800);
}

void draw () {
  blueRect(100,20,500);
}

void blueRect (int x, int y, int w){
fill (0,100,200);
rect (x,y, w, w);
}
