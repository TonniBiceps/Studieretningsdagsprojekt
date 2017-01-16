class Block {
  int bSize = 50;
  String bType;
  PImage bImg;
  color bColor;
  PVector bPos;
  
  Block(String bType, PVector bPos){
    this.bType = bType;
    this.bPos = bPos;
  }
}