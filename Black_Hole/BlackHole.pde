class BlackHole{ 
//declare var.
PVector loc;
float sz;
//intailized properties
BlackHole (){
loc = new PVector (random (width), random (height));
sz = 10;
}
//define the meathods\

void display () {
  ellipse (loc.x,loc.y, sz,sz);
}
boolean consume (Ball food) {
  if (loc. dist (food. loc) < sz/2 + food. sz/2) {
return true;
}
else{
  return false;
}
}
void grow() {
  sz+=1;
}
}

