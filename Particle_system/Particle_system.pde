//ArrayList with Particles
ArrayList <Particles> ps = new ArrayList <Particles>();
//Insert Black Hole Class
BlackHole eating;
//Upload Image
PImage img;
void setup () {
  size (500, 500);
  //Load Image
  img = loadImage("Happy Sun.png");
  //Give eating a value
  eating = new BlackHole();
  //  colorMode (HSB, 360, 100, 100, 100);
  //  noStroke();
}

void draw () {
  background (#1CC0FF);
  ps.add (new Particles());
  //make the black hole appear
  eating. display();
  for (int i = ps.size () - 1; i > 0; i--) {
    Particles p2 = ps. get (i);
  //Make Particles Appear
    p2. display();
    //Give Particles the Yellow, Happiness color
    p2.fills();
    //Get the Particles to move
    p2. move();
    //get the Particles to fade into transparancy
    p2.update();
    //Remove particles
    if (p2.begone ()) {
      ps.remove(i);
    }
    //Make the tree grow and consume balls
    if (eating.consume(p2)) {
      ps.remove(i);
// Make the tree stop growing when sz <190
      eating.grow();
    }
  }
  //Insert Image
  image (img, 0, 0, 200, 200);
}

