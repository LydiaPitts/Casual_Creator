void setup() {
  size(1000, 1000);
  background(0);
  
}

void draw(){
  if(mousePressed){
    for (int i = 0; i < width; i = i+100) {
      for (int j = 0; j < height; j = j+100) {
        stroke(255);
        line(mouseX - i, mouseY - j, pmouseX - i, pmouseY - j);
        line(mouseX - i, mouseY + j, pmouseX - i, pmouseY + j);
        line(mouseX + i, mouseY + j, pmouseX + i, pmouseY + j);
        line(mouseX + i, mouseY - j, pmouseX + i, pmouseY - j);
      }
    }
  } 
}
