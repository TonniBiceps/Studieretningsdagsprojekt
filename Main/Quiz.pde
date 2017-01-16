class Quiz {
  String question;  
  StringList options = new StringList();
  String beskrivelse;
  System system;

  Quiz(System system, int quizID) {
    this.system = system;

    switch(quizID) {
    case 1 :
      beskrivelse = "Matematik A på gymnasiet er det næste niveau efter folkeskolen. \nHer vil man lære om beviser og hvordan verden og tal hænger sammen.";
      question = "Hvad er løsningen til 3. kvadratsætning?";
      options.append("(a+b)(a-b) = a^2 - b^2");
      options.append("(a-b)^2 = a^2+b^2-2ab");
      options.append("(a+b)^2 = a^2+b^2+2ab");
      break;
    case 2 :
      beskrivelse = "I Informationsteknologi vil du lære om forskellige former for software. Man lærer om brugervenlighed og webdesign, sociale medier, apps, virus og sikkerhed, hacking og kryptering, både hvordan det bruges ude i verden, men også hvordan du selv kan skabe det.";
      question = "Hvad er hovedpunkterne bag organisatorisk sikkerhed?";
      options.append("Disciplin og adfærd");
      options.append("Sikkerhedskopiering og virus");
      options.append("Kontrol af brugeradgang, PW og VPN.");
      break;
    case 3 :
      beskrivelse = "I Programmering vil du arbejde med kodning inden for Processing. Du vil lære at løse forskellige problematikker med kodning, lege med former og figurer, lave dit eget spil, og skabe en AI.";
      question = "Hvad er hovedpunkterne bag organisatorisk sikkerhed?";
      options.append("Disciplin og adfærd");
      options.append("Sikkerhedskopiering og virus");
      options.append("Kontrol af brugeradgang, PW og VPN.");
      break;
    case 5 :
      question = "Hvilket sprog er prossesing primært baseret på?";
      options.append("Java");
      options.append("Python");
      options.append("Spansk");
      break;
    }
  }

  void Update() {
    rect(100, 10, 600, 200);

    pushStyle();
    fill(0);
    textSize(12);
    textAlign(CENTER);
    text(beskrivelse, width/2, 50);
    popStyle();

    pushStyle();
    fill(0);
    textSize(25);
    textAlign(CENTER);
    text(question, width/2, 115);
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