Button start;
Boolean mainmenu = true;

void setup(){
  size(1000,700);
  background(30);
  if (mainmenu == true){
    start = new Button();
    start.display(width/2 - 100, height/2 - 40, "Start");
  }
}

void draw(){
}
