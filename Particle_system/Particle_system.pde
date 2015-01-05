PVector origin;
//ArrayList with Particles (Intialize and Declare)
ArrayList <Particles> ps = new ArrayList <Particles>();
ArrayList <Cloud> c = new ArrayList <Cloud>();
//Insert Black Hole Class (Declare)
BlackHole eating;
//Declare Happy Sun and Meadow
PImage img;
PImage img2;
void setup () {
  size (500, 500);
  origin = new PVector(80,60);
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
  //For each particle...
  for (int i = ps.size () - 1; i > 0; i--) {
    //get the particles
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
    //Tree stops growing when the sz = 190
    if (eating.consume(p2)) {
      eating.grow();
    }

    //For each Cloud Particle...
    c.add (new Cloud());
    for (int j = c.size ()-1; j > 0; j--) {
      //get the cloud particles
      Cloud c2 = c.get (j);
      //display the cloud particle
      c2.display();
      //when the cloud covers the location of the particles' orgion, make the particles disappear
      if (i!= j) {
        if (c2.cover(origin) && ps.size() > 1) {
          ps.remove (i);
        }
      }
    }
  }
  //Insert Image
  image (img, 0, 0, 200, 200);
}

