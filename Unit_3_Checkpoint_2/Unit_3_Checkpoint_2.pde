color darkBlue = #03045E;
color oceanBlue = #0077b6;
color cyan = #00b4d8;
color lightBlue = #90e0ef;
color paleBlue = #caf0f8;
color selected;

void setup(){
  size(600,600);
  strokeWeight(5);
  stroke(darkBlue);
  selected=oceanBlue;
}

void draw(){
  background(paleBlue);
  
  button(25,175,450,550);
  fill(lightBlue);
  rect(25,450,150,100);
  
  button(225,375,450,550);
  fill(cyan);
  rect(225,450,150,100);
  
  button(425,575,450,550);
  fill(oceanBlue);
  rect(425,450,150,100);
  
  fill(selected);
  stroke(darkBlue);
  rect(100,50,400,350);
}

void mouseReleased(){
  if(mouseX >= 25 && mouseX <= 175 && mouseY >= 450 && mouseY <= 550){
    selected=lightBlue;
  }
  if(mouseX >= 225 && mouseX <= 375 && mouseY >= 450 && mouseY <= 550){
    selected=cyan;
  }
  if(mouseX >= 425 && mouseX <= 575 && mouseY >= 450 && mouseY <= 550){
    selected=oceanBlue;
  }
}

void button(int x1,int x2,int y1,int y2){
  if (mouseX >= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2){
    stroke(255);
  }else{
    stroke(darkBlue);
  }
}
