String [] nameArray = {"Hi,","this","is","an","array!", "How","are","you?"};

void setup() {
  size (600, 500);
  textSize (30);
}
void draw () {
  background (0);
  for (int i = 0; i < nameArray.length; i++){
  text (nameArray [i], 20, 40 + i*40);
  }
}
