class Button {
  int buttonWidth, buttonHeight, xpos, ypos;
  String text;
  boolean hover, clicked;
  final int colorUnselected = color(255);
  final int colorSelected = color(180);
  
  Button(int xpos, int ypos, String text) {
    this.buttonWidth = 170;
    this.buttonHeight = 40;
    this.xpos = xpos;
    this.ypos = ypos;
    this.text = text;
  }
  
  void display() {
    if (clicked) {
      fill(colorSelected);
    } else {
      fill(colorUnselected);
    }
    if (isHovering(mouseX, mouseY)) {
      stroke(0);
      strokeWeight(2);
    } else {
      noStroke();
    }
    rect(xpos, ypos, buttonWidth, buttonHeight);
    fill(0);
    PFont font = createFont("Cambria", 30);
    textFont(font);
    text(text, xpos+50, ypos+30);
  }
  
  boolean isClicked() {
    boolean click = isHovering(mouseX, mouseY);
    if (click) {
      clicked = !clicked;
    }
    return click;
  }
  
  boolean isHovering(int x, int y) {
    return x > xpos && x < xpos+buttonWidth && y > ypos && y < ypos+buttonHeight;
  }
}
