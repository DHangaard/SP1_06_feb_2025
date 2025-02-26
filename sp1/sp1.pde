/*

***
Set parameters early so that all classes draw upon 
the same int x and int y from Group class! 
***

// Variables
 
 int backgroundBlue = color();
 int groupBlue = color();
 int groupYellow = color();
 
 Group groupA;
 Group groupB;
 Group groupC;
 Group groupD;
 
 class ScreenDivider;
 
 */

void setup() {
  size(1280, 720); // should work at all sizes, but use this as test
  background(0); // change this to variable blue

  /*
  screenDivider = new ScreenDivider();
   groupA = new Group();
   groupB = new Group();
   groupC = new Group();
   groupD = new Group();
   */

  /*
Main will include variables for background color and group color
   x and y placements and maybe (this can be called upon) a 'frame'
   
   = Use translate() on rect to create evenspace
   Space even on sides and down the middle
   Space even top, down and middle, wider than sides
   75 pixels between rows
   ...
   }
   
   void draw() {
   rectMode(CORNER);
   fill(255);
   noStroke();
   
   // Upper left quadrant
   rect(40, 60, 560, 50); // Row one
   rect(40, 135, 560, 50); // Row two
   rect(40, 210, 560, 50); // Row three
   rect(40, 285, 560, 50); // Row four
   }
   
   Projekter
   - importer billede
   - skriv tekst
   - skygger til flag "gradient"
   - switch case (if (y < height/2) ...) for color control
   */

  /*
  // Variables
   // Placement
   // Can these be sorted in a smarter way - ?
   int GroupAX;
   int GroupAY;
   
   int GroupBX;
   int GroupBY;
   
   int GroupCX;
   int GroupCY;
   
   int GroupDX;
   int GroupDY;
   
   // Color
   color backgroundColor = color(0, 0, 150); // adjust this
   color groupYellow;
   color groupBlue;
   */
