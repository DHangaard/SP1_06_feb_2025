class TeamName {

  // Data
  String[] teamName;

  // Constructor
  TeamName() {

    teamName = new String[16];

    // Group A
    teamName[0] = "RUSSIA";
    teamName[1] = "SAUDI ARABIA";
    teamName[2] = "EGYPT";
    teamName[3] = "URUGUAY";

    // Group B
    teamName[4] = "PROTUGAL";
    teamName[5] = "SPAIN";
    teamName[6] = "MOROCCO";
    teamName[7] = "IRAN";

    // Group C
    teamName[8] = "FRANCE";
    teamName[9] = "AUSTRALIA";
    teamName[10] = "PERU";
    teamName[11] = "DENMARK";

    // Group D
    teamName[12] = "ARGENTINA";
    teamName[13] = "ICELAND";
    teamName[14] = "CROATIA";
    teamName[15] = "NIGERIA";
  }

  // Methods
  void printList() {
    for (String e : teamName) {
      println(e);
    }
  }

  void display(int i) {
    // text(teamName[i]) - use reference
  }

  String getTeamName() {
    // return array to variable in TeamInfo
  }
}
