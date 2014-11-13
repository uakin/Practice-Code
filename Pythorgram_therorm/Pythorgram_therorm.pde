void setup () {
  size (600,600);
  textSize (30);
}
void draw () {
  background (0);
 
  text ("The hyp. is" + pythorgram (30,40), 15, height/2);
}

float pythorgram (float a, float b) {
float c;
c = sqrt (sq (a) + sq (b));
return c;
}
