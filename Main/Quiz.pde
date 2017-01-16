class Quiz {
  String question;  
  StringList options = new StringList();
  String beskrivelse;
  System system;

  Quiz(System system, int quizID) {
    this.system = system;

    switch(quizID) {
    case 1 :
      beskrivelse = "";
      question = "Hvor stor er autriches' ***?";
      options.append("5 m");
      options.append("12 m");
      options.append("34 m");
      break;
    case 2 :
      question = "Hvor lille er autriches' ***?";
      options.append("5 m");
      options.append("12 m");
      options.append("34 m");
      break;
    case 3 :
      question = "Hvorfor er lille er autriches' ***?";
      options.append("5 m");
      options.append("12 m");
      options.append("34 m");
      break;
    case 4 :
      question = "Hvormeget lille er autriches' ***?";
      options.append("5 m");
      options.append("12 m");
      options.append("34 m");
      break;
    }
  }

  void Update() {
    rect(100, 10, 600, 200);
    pushStyle();
    fill(0);
    textSize(25);
    textAlign(CENTER);
    text(beskrivelse, width/2, 75);
    text(question, width/2, 125);
    popStyle();

    pushStyle();
    fill(0);
    textSize(15);
    textAlign(CENTER);
    text("Tryk '1': " + options.get(0), width/2, 150);
    text("Tryk '2': " + options.get(1), width/2, 175);
    text("Tryk '3': " + options.get(2), width/2, 200);
    popStyle();
  }
}