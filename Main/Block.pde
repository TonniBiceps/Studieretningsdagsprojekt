class Block {
  int bSize = 50;
  String bType;
  PImage bImg;
  color bColor = color(255, 0, 0); 
  PVector bPos;

  Block(String bType, PVector bPos) {
    this.bType = bType;
    this.bPos = bPos;
  }

  void Update() {
    pushStyle();
    noStroke();
    fill(bColor);
    rect(bPos.x, bPos.y, bSize, bSize);
    popStyle();
  }
}