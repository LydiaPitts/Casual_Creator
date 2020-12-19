float y;
 
// The statements in the setup() function 
// execute once when the program begins
void setup() {
  size(500, 500);
  background(150, 0, 20);
}

// The statements in draw() are executed until the 
// program is stopped. Each statement is executed in 
// sequence and after the last line is read, the first 
// line is executed again.
void draw() { 
  if(mousePressed){
    stroke(10, 10, 200);
    fill(100, 220, 100);
    line(mouseX, mouseY, pmouseX , pmouseY);
    stroke(100, 200, 200);
    line(mouseX - 50, mouseY - 50, pmouseX - 50, pmouseY - 50);
  } 
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      background(0, 0, 20);
      fill(100, 0, 100);
  } else if (keyCode == DOWN) {
    background(0, 100, 100);
    fill(200, 200, 100);
  }
}
}
