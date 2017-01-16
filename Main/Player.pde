class Player {

  Map map;

  //Position
  PVector pos = new PVector(0, 0);

  //Vertikal bevægelse
  float jumpSpeed;

  //Horisontal bevægelse
  float maxSpeed = 10;
  float currentSpeed = 10;
  PVector acceleration = new PVector(0.75, 0);

  boolean keys[] = new boolean [8];

  //MapId
  int mapID = 0;

  void handleMovement() {
    if (keys[0]) {
      pos.x -= currentSpeed;
    }
    if (keys[1]) {
      pos.x += currentSpeed;
    }
    if (keys[2]) {
      checkBlock();
    }
    if (keys[3]) {
    }
    if (keys[4]) {
    }
  }

  void Update() {
    //Opdater position etc

    pushStyle();
    fill(255, 150, 0);
    noStroke();
    rect(pos.x, pos.y, 50, 50);
    popStyle();

    handleMovement();
  }

  void checkBlock() {
    for (Block b : map.blocks) {
      if (b.doors.hasValue(b.bType)) {
        if (dist(pos.x, pos.y, b.bPos.x, b.bPos.y) < 50) {
          if (mapID == b.mapID) {
            mapID = 0;
          } else {
            mapID = b.mapID;
          }
        }
      }
    }
  }
}