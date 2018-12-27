class Button {
  int width;
  int height;
  
  Button() {
    this.width = 170;
    this.height = 40;
  }
  
  void display(int xpos, int ypos, String text) {
    fill(255);
    rect(xpos, ypos, width, height);
    fill(0);
    PFont font = createFont("Cambria", 30);
    textFont(font);
    text(text, xpos+50, ypos+30);
  }
}
