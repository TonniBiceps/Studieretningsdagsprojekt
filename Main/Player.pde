class Player {
  
  //Position
  PVector pos;
  
  //Vertikal bevægelse
  float jumpSpeed;
  
  //Horisontal bevægelse
  float maxSpeed;
  float currentSpeed;
  float acceleration;
 
  void Update() {
    //Opdater position etc
  }
  
  void Accelerate() {
    
    while(currentSpeed < maxSpeed) {
      currentSpeed += acceleration; 
    }
  }
}