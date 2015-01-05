//ArrayList with Particles (Intialize and Declare)
ArrayList <Particles> ps = new ArrayList <Particles>();
//Insert Black Hole Class (Declare)
BlackHole eating;
//Upload Happy Sun and Meadow
PImage img;
PImage img2;
void setup () {
  size (500, 500);
  //Load Happy Sun and Meadow
  img = loadImage("Happy Sun.png");
  img2 = loadImage("Meadow.jpg");
  //Give eating a value (Intialize)
  eating = new BlackHole();
}

void draw () {
  background (img2);
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
    if (p2.begonex()) {
      ps.remove(i);
    }
    //Make the tree grow when the particles hit it
    if (eating.consume(p2)) {
      eating.grow();
    }
  }
  //Insert Image
  image (img, 0, 0, 200, 200);
}

