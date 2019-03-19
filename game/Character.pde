class Character {
  int xpos = width/2;
  int ypos = height/2;
  int charWidth = 50;
  color charColor;
  
  Character(color charColor) {
    this.charColor = charColor;
  }
  
  void display() {
    fill(charColor);
    ellipse(xpos, ypos, charWidth, charWidth);
  }
}
