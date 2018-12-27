Button start;
Boolean mainmenu = true;

void setup() {
  size(1000,700);
  background(30);
  start = new Button(width/2 - 100, height/2 - 40, "Start");
}

void draw() {
  if (mainmenu == true) {
    start.display();
  }
}

void mouseClicked() {
  if (start.isClicked()) {
  }
}
