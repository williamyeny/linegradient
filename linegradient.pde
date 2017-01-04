float dh = 1; //delta height
float dm = 25;  //delta margin


void setup() {
  size(800, 600); //width and height of image  
}

void draw() {
  background(255, 255, 255);
  float h = dh;  //height (starting)
  for (int i = 0; i < height + dm; i += dm) {
    strokeWeight(h);
    line(0, i, width, i);
    h += dh;
  }
  saveFrame(dh + " " + dm + " " + width + "x" + height + ".png");
  exit();
}