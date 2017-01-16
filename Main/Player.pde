class Player {
  
  //Position
  PVector pos;
  
  //Vertikal bevægelse
  float jumpSpeed;
  
  //Horisontal bevægelse
  float maxSpeed;
  float currentSpeed;
  float acceleration;
  
  //MapId
  int mapID = 0;
 
  void Update() {
    //Opdater position etc
  }
  
  void Accelerate() {
    
    while(currentSpeed < maxSpeed) {
      currentSpeed += acceleration; 
    }
  }
}