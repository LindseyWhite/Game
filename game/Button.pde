class Button {
  int buttonWidth = 170, buttonHeight = 40, xpos, ypos;
  String text;
  boolean hover, selectable, selected = false, isDisplayed = false;
  final int colorUnselected = color(255);
  final int colorSelected = color(0, 200, 0);
  final int colorHover = color(180);
  
  Button(int xpos, int ypos, String text, boolean selectable) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.text = text;
    this.selectable = selectable;
  }
   
  void display() {
    isDisplayed = true;
    if (selected && selectable) {
      fill(colorSelected);
      if (isHovering(mouseX, mouseY)) {
        stroke(0);
        strokeWeight(2);
      } else {
        noStroke();
      }
    } else {
      fill(colorUnselected);
      if (isHovering(mouseX, mouseY)) {
        fill(colorHover);
      }
    }
    rect(xpos, ypos, buttonWidth, buttonHeight);
    noStroke();
    fill(0);
    PFont font = createFont("Cambria", 30);
    textFont(font);
    textAlign(CENTER, CENTER);
    text(text, xpos+85, ypos+15);
  }
  
  boolean isClicked() {
    boolean click = isHovering(mouseX, mouseY);
    if (click && isDisplayed) {
      selected = !selected;
    }
    return click;
  }
  
  boolean isSelected(){
    return selected;
  }
  
  boolean isHovering(int x, int y) {
    return x > xpos && x < xpos+buttonWidth && y > ypos && y < ypos+buttonHeight;
  }
}
