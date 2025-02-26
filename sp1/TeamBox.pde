class TeamBox {

  // Data
  int boxWidth;
  int boxHeight;
  
  // Constructor
  TeamBox(){
  boxWidth = 0; // Figure out relationship bix and width
  boxHeight = 0; // Figure out relationship bix and height
  
  }
  // Methods
  void display(int xPos, int yPos) {
    rectMode(CENTER);
    noStroke();
    fill(255);
    
    rect(xPos, yPos, boxWidth, boxHeight);
  }
}
