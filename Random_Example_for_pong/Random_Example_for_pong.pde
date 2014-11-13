float num;
int result;
void setup() {
}

void draw() {
  num = random(1);
  if (num > .5) {
    result = 1;
  } else {
    result = -1;
  }
  println(result);
}

