Button start, settings, returnToStart, toggleMusic, toggleKeys;
Boolean isMainMenu = true, isPlaying = false, isSettings = false;
Character steve;

void setup() {
  size(1000,700);
  start = new Button(width/2 - 100, height/2 - 100, "Start", false);
  settings = new Button(width/2 - 100, height/2, "Settings", false);
  returnToStart = new Button(width/2 - 100, height/2 + 100, "Back", false);
  toggleMusic = new Button(width/2 - 100, height/2 - 100, "Music On", true);
  toggleKeys = new Button(width/2 - 100, height/2, "Use WASD", true);
  steve = new Character(#FFCC00);
}

void draw() {
  background(30);
  if (isMainMenu == true) {
    start.display();
    settings.display();
  }
  else if (isSettings == true) {
    toggleMusic.display();
    toggleKeys.display();
    returnToStart.display();
  }
  else if (isPlaying == true) {
    steve.display();
  }
}

void mouseClicked() {
  if (start.isClicked()) {
    isMainMenu = false;
    isPlaying = true;
    start.isDisplayed = false;
    settings.isDisplayed = false;
  }
  if (settings.isClicked()) {
    isMainMenu = false;
    isSettings = true;
    start.isDisplayed = false;
    settings.isDisplayed = false;
  }
  if (returnToStart.isClicked()) {
    isMainMenu = true;
    isSettings = false;
    returnToStart.isDisplayed = false;
    toggleMusic.isDisplayed = false;
    toggleKeys.isDisplayed = false;
  }
  if (toggleMusic.isClicked()) {
    if (toggleMusic.selected) {
      toggleMusic.text = "Music Off";
    } else {
      toggleMusic.text = "Music On";
    }
  }
  if (toggleKeys.isClicked()) {
    if (toggleKeys.selected) {
      toggleKeys.text = "Use Arrows";
    } else {
      toggleKeys.text = "Use WASD";
    }
  }
}
