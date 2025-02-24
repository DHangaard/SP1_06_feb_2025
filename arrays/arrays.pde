// Make a class that diplays flag and country name
// Do this by joining two arrays in class

// Flag .img files from:
// https://es.vecteezy.com/arte-vectorial/173132-copa-del-mundo-futbol-grupo-etapa-banderas-del-pais-2018-vector

/*
class countryTag
 
 // Data
 // Variables for placement
 int x
 int y
 
 
 // Constructor
 
 // Methods
 // Methods displays country x 4 or once and then call it multiple times?
 // Option 1:
 void display(int indexNumberStart){
 for (int i = 0; i < 4; i++){ // make a variable for '4'?
 // Text and image from array
 // y += something
 // i++ increments index[]
 }
 
 void display(int index){
 // Text and image from array
 // x and y same as / offset from rect
 }
 }
 */

void setup() {
  size(800, 800);
  background(125);
  
  // Because amount of countries is known:
  // Use array instead of array list
  String[] flagString = new String[16];
  PImage[] flagImage = new PImage[1];

  // This will be hardcoded
  // Due to limitations of programmers skill

  // List of Strings

  // Group A
  flagString[0] = "RUSSIA";
  flagString[1] = "SAUDI ARABIA";
  flagString[2] = "EGYPT";
  flagString[3] = "URUGUAY";

  // Group B
  flagString[4] = "PROTUGAL";
  flagString[5] = "SPAIN";
  flagString[6] = "MOROCCO";
  flagString[7] = "IRAN";

  // Group C
  flagString[8] = "FRANCE";
  flagString[9] = "AUSTRALIA";
  flagString[10] = "PERU";
  flagString[11] = "DENMARK";

  // Group D
  flagString[12] = "ARGENTINA";
  flagString[13] = "ICELAND";
  flagString[14] = "CROATIA";
  flagString[15] = "NIGERIA";


  // List of images
  flagImage[0] = loadImage("russiaFlag.jpg");

  // Test array in for loop:
  for (int i = 0; i < 1; i++) {
    println(flagString[i]);
    text(flagString[i], 250, 150);
    image(flagImage[i], 0, 150);
  }
}
