class TeamInfo {

  // Data
  TeamFlag teamFlag;
  TeamName teamName;
  int xPos;
  int yPos;
  int shadowOffset;
  int textOffset;

  // Constructor
  TeamInfo(int xPos, int yPos) {
    // teamFlag = getTeamFlag();
    // teamName = getTeamName();
  }

  // Methods

  // This method displays chosen flags and strings from array
  // Incorporate xPos and yPos
  void teamSelection(int team1, int team2, int team3, int team4) {
    teamName.display(team1);
    teamFlag.display(team1);

    teamName.display(team2);
    teamFlag.display(team2);

    teamName.display(team3);
    teamFlag.display(team3);

    teamName.display(team4);
    teamFlag.display(team4);
  }

  void flagShadow() {

    // Change values of variables so they offset from flag
    int x = 50;
    int y = 50;
    int w = 400;
    int h = 50;
    int grey = 225;
    int strokeWidth = 2;

    noStroke();
    fill(255);
    rect(x, y, w, h);

    for (int i = 255; i >= 0; i -= 5) {

      // experiment with strokeWeight
      strokeWeight(strokeWidth);
      // strokeCap SQUARE to allign with rect
      strokeCap(SQUARE);
      // int i as alpha to reduce opacity
      stroke(grey, i);


      // x + length of flag img
      line(x+75, y, x+75, y+h-1); // due to line going over edge

      // Increment x with value of strokeWeight - make this a variable
      x += strokeWidth-1; // -1 for no spcing between lines
      grey++;
    }
  }
}
