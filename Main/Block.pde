class Block {
  int bSize = 50;
  String bType;
  PImage bImg;
  color bColor;
  PVector bPos;
  int mapID = 0;
  StringList doors = new StringList();

  Block(String bType, PVector bPos) {
    this.bType = bType;
    this.bPos = bPos;
    
    doors.append("2");
    doors.append("3");
    doors.append("4");
    doors.append("5");

    switch(bType) {
    case "1":
      this.bColor = color(255, 0, 0);
      break;
    case "2":
      this.bColor = color(0, 255, 0);
      this.mapID = 1;
      break;
    }
  }

  void Update() {
    pushStyle();
    noStroke();
    fill(bColor);
    rect(bPos.x, bPos.y, bSize, bSize);
    popStyle();
  }
}