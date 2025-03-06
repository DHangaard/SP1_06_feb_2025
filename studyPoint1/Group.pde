class Group {

  // Attributes
  // Positioning
  float x;
  float y;
  float offset;

  float groupNameX;
  float groupNameY;
  float groupNameSize;

  // for use in parameters
  char groupName;
  int groupColor;

  // Declare Team objects
  Team[] teams;


  // Constructor
  Group(float x, float y, char groupName, int groupColor) {
    this.x = x;
    this.y = y;
    this.groupName = Character.toUpperCase(groupName);
    this.groupColor = groupColor;

    offset = height * .1;
    groupNameSize = height * .04;

    groupNameX = x + (width * .225);
    groupNameY = y - (height * .04);

    teams = new Team[4];

    // Display groupName
    textAlign(CENTER, CENTER);
    textSize(groupNameSize);
    fill(groupColor);
    text("GROUP " + groupName, groupNameX, groupNameY);
  }

  // Methods
  void display(int team1, int team2, int team3, int team4) {
    teams[0] = new Team(x, y);
    teams[0].displayTeam(x, y, groupColor, team1);
    y += offset;

    teams[1] = new Team(x, y);
    teams[1].displayTeam(x, y, groupColor, team2);
    y += offset;

    teams[2] = new Team(x, y);
    teams[2].displayTeam(x, y, groupColor, team3);
    y += offset;

    teams[3] = new Team(x, y);
    teams[3].displayTeam(x, y, groupColor, team4);
  }
}
