/**
Author: Lydia Pitts
CSCI 3725: Computational Creativity
Mission 9: Another Kind of CC
Last Edited: Dec 20, 2020

The goal of this mission is to gain experience with the Processing programming language and 
design and build your own casual creator. This creator is called Bubble Buds.

Using Bubble Buds, users have the ability to write customized messages. As users type, the 
message appears horizontally across the screen, and colorful bubbles with the letters from 
their message bounce randomly around the canvas. Users are able to pause (Enter Key) and 
slowly step through the bubbles progress (Right Key), change the colors of the message and 
background, edit the font (mouse click, and up/down), and restart creating with ease (Left Key).
**/

ArrayList<Bubble> bubbles;
String[] fontList = PFont.list();
PFont myFont;
float fontsize = 100;
String name = "";
boolean looping = true;
color backcolor = color(255);
color namecolor = color(0);
char[] letters ={'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 
                 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
                 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '?', '!',
                 '.', '\'', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '1', '2', '3', '4', '5',
                 '6', '7', '8', '9', '0', '<', '>', '/', '\\', ':', ';', '~', '+', '=', '`'};
 
void setup() {
  size(1200,600);
  smooth();
  bubbles = new ArrayList<Bubble>();
  myFont= createFont("Georgia", 32);
}

void draw() {
  background(backcolor);
  for (Bubble bub : bubbles) {
    bub.move();
    bub.display();
  }
  fill(namecolor);
  textSize(fontsize);
  textAlign(CENTER, CENTER);
  text(name, 600 , 300 );
}

class Bubble {
  color bubblecolor;
  color lettercolor;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  char letter;
  
  Bubble(char inputletter) {
    bubblecolor = color(random(0, 255),random(0, 255),random(0, 255));
    lettercolor = color(random(0, 255),random(0, 255),random(0, 255));
    xpos = random(0, 600);
    ypos = random(0, 600);
    xspeed = random(0.1, 2);
    yspeed = random(0.1, 2);
    letter = inputletter;
  }
  
  void display(){
    fill(bubblecolor);
    stroke(bubblecolor);
    ellipse(xpos ,ypos , 120, 120);
    fill(lettercolor);
    textFont(myFont);
    textSize(80);
    text(letter, xpos, ypos - 6);
  }
  
  void move(){
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (xpos > width - 60) {
      xspeed = random(-10, 0.1);
    }
    if (xpos < 60) {
      xspeed = random(0.1, 10);
    }
    if (ypos > height - 60) {
      yspeed = random(-10, 0.1);
    }
    if (ypos < 60) {
      yspeed = random(0.1, 10);
    }
  }
} //End of Bubble Class


void keyPressed(){
  for( char c : letters){
      if (key == c){        
        String printThis = str(c);
        name += (printThis);
        Bubble bubble = new Bubble(key);
        bubbles.add(bubble);
      }
  }
  if ( key == ' ' ){
    name += " ";
  }
  if ( key == ENTER ){
    if(looping){
      noLoop();
      looping = false;
    } else {
      loop();
      looping = true;
    }
  }
  if (key == CODED) {
    if (keyCode == LEFT) { //deletes the bubbles/name/background color so the user can start again
      bubbles = new ArrayList<Bubble>();
      backcolor = color(255);
      name = "";
      loop();
    } else if (keyCode == RIGHT) { //Allows user to step through the bubbles moving when the program is not looping
      redraw();
    } else if (keyCode == UP) { //Allows user to step through the bubbles moving when the program is not looping
      fontsize += 5;
    } else if (keyCode == DOWN) { //Allows user to step through the bubbles moving when the program is not looping
      if (fontsize <= 5){ fontsize = 5;} else { fontsize -= 5;}
    }
  }
}

void mousePressed(){
  backcolor = color(random(0, 255),random(0, 255),random(0, 255));
  namecolor = color(random(0, 255),random(0, 255),random(0, 255));
  int num = int(random(0, fontList.length));
  String fontName = fontList[num];
  myFont = createFont(fontName, 32);
  redraw();
}