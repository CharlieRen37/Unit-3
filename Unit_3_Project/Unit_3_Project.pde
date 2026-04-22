color red = #FF0000;
color green = #00FF00;
color cyan = #00b4d8;
color blue = #0000FF;
color pink = #FF00EF;
color purple = #A500FF;
color yellow = #FFFF00;
color orange = #FF8400;
color black = #000000;
color white = #FFFFFF;
color background = #fcf6bd;
color frame = #8b5e34;
color selected;
boolean back_ground;

void setup(){
  background(background);
  size(900,900);
  strokeWeight(3);
  stroke(frame);
  selected=white;
}

void draw(){
  button(850,170,20);
  fill(red);
  circle(850,170,40);
  
  button(790,170,20);
  fill(green);
  circle(790,170,40);
  
  button(790,110,20);
  fill(cyan);
  circle(790,110,40);
  
  button(790,50,20);
  fill(blue);
  circle(790,50,40);

  button(850,110,20);
  fill(pink);
  circle(850,110,40);
  
  button(850,50,20);
  fill(purple);
  circle(850,50,40);
  
  button(850,290,20);
  fill(yellow);
  circle(850,290,40);
  
  button(850,230,20);
  fill(orange);
  circle(850,230,40);
  
  button(790,230,20);
  fill(black);
  circle(790,230,40);
  
  button(790,290,20);
  fill(white);
  circle(790,290,40);
  
  //squareButton(
  
  fill(selected);
  stroke(white);
  rect(25,100,575,775);
}

void mouseReleased(){
  if(dist(790,50,mouseX,mouseY)<=20){
    selected=blue;
  }
  if(dist(790,110,mouseX,mouseY)<=20){
    selected=cyan;
  }
  if(dist(850,110,mouseX,mouseY)<=20){
    selected=pink;
  }
  if(dist(850,50,mouseX,mouseY)<=20){
    selected=purple;
  }
  if(dist(850,290,mouseX,mouseY)<=20){
    selected=yellow;
  }
  if(dist(850,230,mouseX,mouseY)<=20){
    selected=orange;
  }
  if(dist(790,230,mouseX,mouseY)<=20){
    selected=black;
  }
  if(dist(790,290,mouseX,mouseY)<=20){
    selected=white;
  }
  if(dist(790,170,mouseX,mouseY)<=20){
    selected=green;
  }
  if(dist(850,170,mouseX,mouseY)<=20){
    selected=red;
  }
}

  
void button(float x,float y,float r){
  if (dist(x,y,mouseX,mouseY)<=r){
    stroke(255);
  }else{
    stroke(frame);
  }
}

void squareButton(float x1, float x2, float y1, float y2){
  if(mouseX>= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2){
    stroke(255);
  }else{
    stroke(frame);
  }
}

void mouseDragged(){
  line(pmouseX, pmouseY, mouseX, mouseY);
}
