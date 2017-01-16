class Player {

  //Position
  PVector pos = new PVector(0, 0);

  //Vertikal bevægelse
  float jumpSpeed;

  //Horisontal bevægelse
  float maxSpeed = 10;
  float currentSpeed = 0;
  PVector acceleration = new PVector(2, 0);

  boolean keys[] = new boolean [5];

  //MapId
  int mapID = 0;

  void handleMovement() {
    if (keys[0]) {
      pos.x = pos.x - currentSpeed;
      Accelerate();
    }
    if (keys[1]) {
      pos.x = pos.x + currentSpeed;
      Accelerate();
    }
    if (keys[2]) {
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
    rect(pos.x, pos.y, 25, 25);
    popStyle();
    
    handleMovement();
    Deaccelerate();
  }

  void Accelerate() {

    if (abs(currentSpeed) < maxSpeed) {
      currentSpeed += acceleration.x;
    }
  }

  void Deaccelerate() {

    if (abs(currentSpeed) > 0) {
      currentSpeed -= acceleration.x * 0.5;
    }
  }
}