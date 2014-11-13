int headx, heady;
int bodyx, bodyy;
int bodywidth, bodyheight;
void setup() {
  size (500, 300);
  noCursor();
}
//head
void draw () {
  background (255);
  headx = mouseX;
  heady = mouseY;
  bodyx = headx - 15;
  bodyy = heady + 20;
  bodywidth = 30;
  bodyheight = 40;
  fill(232, 190, 191);
  ellipse (headx, heady, 40, 40);
  //body
  fill(179, 96, 232);
  rect (bodyx, bodyy, bodywidth, bodyheight);
  //left arm
  line (bodyx, bodyy, bodyx - 10, bodyy +35);
  //right arm
  line (bodyx + 30, bodyy, bodyx + 40, bodyy + 35);
  //left leg
  line (bodyx, bodyy + 40, bodyx, bodyy + 70);
  //right leg
  line (bodyx + 30, bodyy + 40, bodyx + 30, bodyy + 70);
  //eyes
  fill (96, 134, 232);
  ellipse (headx - 10, heady-2, 10, 10);
  ellipse (headx + 10, heady-2, 10, 10);
  //shirt
  fill (255);
  triangle (bodyx, bodyy, bodyx + 15, bodyy + 15, bodyx + 30, bodyy);
  //shirt button
  fill (190, 220, 232);
  ellipse (bodyx + 15, bodyy + 22, 10, 10);
  //mouth
  noFill();
  arc (headx, heady + 9, 20, 10, QUARTER_PI, PI);
}

