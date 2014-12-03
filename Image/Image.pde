PImage img;
void setup () {
  size (500,500);
  img = loadImage ("Pokemon.gif");
}
void draw () {
  background (0);
  image (img, width/3.3,height/3.3,200,200);
}
