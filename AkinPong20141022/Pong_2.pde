// intialize x and y and diam. of circle
float x=300;
float y=250;
float sz=20;
//intialize speeds of circle
float xspeed = 3;
float yspeed = 2;
//intialize left side paddle coords and standard length and width of rects.
float paddlew = 10;
float rectx = 5;
float paddlel = 50;
float recty;
//intialize right side paddle coords.
float rpaddlex = 585;
float rpaddley;
//scoring for left paddle
int score1 = 0;
//scoring for right paddle
int score2 = 0;
//Pokemon image for background
PImage img;
void setup() {
  size (600, 500);
    img = loadImage("Pokemon.gif");
}
void draw() {
  //intiailze y movement of rect.
  recty = mouseY - paddlel/2;
  //background color and graphics
  background (100,200,120);
  line (width/2, 0,width/2, height);
  image(img, width/2.8, 162);
  //Score Board
  text(score1, 220, 80);
  text (score2, 350,80);
  textSize(32);
  // create paddle
  rect (rectx, recty, paddlew, paddlel);
  //create ellipse
  ellipse (x, y, sz, sz);
  //make ball move
  x = x + xspeed;
  y = y + yspeed;
  //make ball reset and give point to left hand paddle
  if (x + sz/2 > width) {
    x= width/2;
    y=height/2;
    score1 += 1;
  }
  //make ball reset and give point to right hand paddle
  if ( x < 0) {
    x = width/2;
    y = height/2;
    score2 += 1;
  }
  //make ball bounce on bottom and top of screen
  if (y > height) {
    yspeed = -2;
  }
  if (y == 0) {
    yspeed = 2;
  }
  // get ball to recoginze and bounce off left paddle
  if (x - sz/2 < rectx + paddlew && y >recty && y < recty + paddlel)
  {
    xspeed = abs(xspeed);
  }
  //make second paddle
  rect (rpaddlex, rpaddley, paddlew, paddlel);
  //get ball to recoginze and bounce off second paddle
  if (x + sz/2 >rpaddlex && y > rpaddley && y < rpaddley + paddlel)
  {
    xspeed = -abs(xspeed);
  }
  //make rpaddley controlled by keyboard
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) {
        rpaddley -= 6;
      }
      if (keyCode == DOWN) {
        rpaddley += 6;
      }
    }
  }
  //whomever score gets to 10 first, player wins, ball goes to center of the screen and does not move.
  if (score1 >=10) {
    text ("You Win!", 50,30);
    ellipse (width/2, height/2,20,20);
    xspeed = 0;
    yspeed = 0;
  }
  if (score2 >= 10) {
    text ("You Win!" , 400,30);
  ellipse (width/2, height/2,20,20);
    xspeed = 0;
    yspeed = 0;
  
}
}

