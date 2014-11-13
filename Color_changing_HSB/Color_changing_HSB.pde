float hue = 0;
 
 void setup() {
   size (500,500);
   colorMode (HSB, 360,100,100,100);
   background (0);
   noStroke();
 }
 void draw () {
   fill (hue%360, 100,90);
   hue++;
   ellipse (mouseX, mouseY, 50,50);
 }

