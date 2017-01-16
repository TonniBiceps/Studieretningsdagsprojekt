class System {
  //Width, height, blokkens størrelse
  int w = 800;
  int h = 400;
  PVector gravity;
  Map map;
    
  System() {
    this.map = new Map(this);
  }
  
  void Update() {
    for (Block b: map.blocks) {
      b.Update();
    }
  }
}