


ArrayList<Bubble> bubbles;
String[] fontList = PFont.list();
PFont myFont;
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
  textSize(100);
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
        name += c;
        Bubble bubble = new Bubble(key);
        bubbles.add(bubble);
      }
  }
  if ( key == ' ' ){
    name += ' ';
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
  if ( key == TAB ){ redraw(); } //Allows user to step through the bubbles moving when the program is not looping
  if ( key == BACKSPACE ) { //deletes the bubbles/name so the user can start again
    bubbles = new ArrayList<Bubble>();
    name = "";
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
