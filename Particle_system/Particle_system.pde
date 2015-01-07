//where the Pariticles will come from
PVector origin;
//ArrayList with Particles (Intialize and Declare)
ArrayList <Particles> ps = new ArrayList <Particles>();
//Insert Cloud Class
Cloud c;
//Insert Black Hole Class (Declare)
BlackHole eating;
//Declare Happy Sun and Meadow
PImage img;
PImage img2;
void setup () {
  size (500, 500);
  origin = new PVector(80, 60);
  //Load Happy Sun and Meadow
  img = loadImage("Happy Sun.png");
  img2 = loadImage("Meadow.jpg");
  //Give eating a value (Intialize)
  eating = new BlackHole();
  c = new Cloud();
}

void draw () {
  background (img2);
  //add particle to the system if the cloud does not cover it
  if (!c.cover(origin)) {
    ps.add (new Particles());
  }
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
    //Remove particles when it goes to the bottom of the screen
    //or to the right
    if (p2.begone ()) {
      ps.remove(i);
    }
    //Make the tree grow when the particles hit it 
    //Tree stops growing when the sz = 190
    if (eating.consume(p2)) {
      eating.grow();
    }

  }
  //Insert Image with CORNER (Happy Sun)
  imageMode(CORNER);
  image (img, 0, 0, 200, 200);
  //Insert Image with CENTER
  imageMode(CENTER);
  //Show the Cloud
      c. display ();
      //Update the Cloud each frame.
      c.update();
}

