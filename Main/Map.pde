class Map {
  int bSize = 50;
  color background = color(71);
  System system;
  ArrayList<Block> blocks = new ArrayList<Block>();

  Map(System system) {
    this.system = system;
  }

  void fromFile(String filename) {
    BufferedReader reader;
    String line;
    reader = createReader(filename);
    boolean read = true;
    int cY = 0;
    while (read) {
      try {
        line = reader.readLine();
      } 
      catch (IOException e) {
        e.printStackTrace();
        line = null;
      }
      if (line == null) {
        read = false;
      } else {
        int cX = 0;
        for (char ch : line.toCharArray()) {
          float x = cX*bSize;
          float y = cY*bSize;
          switch(ch) {
          case '1':
            blocks.add(new Block("1", new PVector(x, y)));
            break;
          }
          ++cX;
        }
        ++cY;
      }
    }
  }
}