ArrayList <Ball> b= new ArrayList <Ball>();
int hue = 0;
void setup () {
  size (800, 800);
  b. add ( new Ball (width/2, height/2, random(5, 30)));
  colorMode (HSB,360,100,100,100);
}
void draw () {
background (0);
hue++;
fill (hue%360, 100,100,60);
  for (int i = 0; i< b.size (); i++) {
    Ball balls = b . get (i);
    balls. move();
    balls. bounce ();
    balls. display ();
    for (int j = 0; j < b. size(); j++) {
      if (i!=j) {
      Ball b2 = b.get (j);
      balls.collison(b2);
      }
    }
  }
}

void mousePressed () {
  for (int i = 0; i <10; i++){
   b. add ( new Ball (mouseX, mouseY, random(5, 30)));
  }
if (b.size() > 50) {
  b.remove(0);
}
}
