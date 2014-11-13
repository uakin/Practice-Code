void setup () {
  size (600, 600);
}
void draw () {
  background (0);
  textSize (40);
  text ("x is" + quardratic (1, 4, 3)[0] + ", " + quardratic (1, 4, 3)[1], 10, height/2);
}
float [] quardratic (float a, float b, float c) {
  float [] results = new float[2];
  results [0] = ((-b + sqrt (sq(b) - 4*a*c))/ 2*a);
  results [1] = ((-b - sqrt (sq(b) - 4*a*c))/ 2*a);
  return results;
}

