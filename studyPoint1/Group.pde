class Group {

  // Attributes
  // Positioning
  float x;
  float y;
  float offset;

  float groupNameX;
  float groupNameY;
  float groupNameSize;

  // for use in parameters - change comment to something more appropriate
  char groupName;
  int groupColor;

  // Declare Team objects
  // Maybe an array of teams?
  // Team team;


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

    // Display groupName
    textAlign(CENTER, CENTER);
    textSize(groupNameSize);
    fill(groupColor);
    text("GROUP " + groupName, groupNameX, groupNameY);
  }

  // Methods
  void display(int team1, int team2, int team3, int team4) {
  }
}
