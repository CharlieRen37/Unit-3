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
  strokeWeight(5);
  stroke(frame);
  selected=white;
}

void draw(){
  button(825,375,50);
  fill(red);
  circle(825,375,100);
  
  button(675,375,50);
  fill(green);
  circle(675,375,100);
  
  button(675,225,50);
  fill(cyan);
  circle(675,225,100);
  
  button(675,75,50);
  fill(blue);
  circle(675,75,100);

  button(825,225,50);
  fill(pink);
  circle(825,225,100);
  
  button(825,75,50);
  fill(purple);
  circle(825,75,100);
  
  button(825,675,50);
  fill(yellow);
  circle(825,675,100);
  
  button(825,525,50);
  fill(orange);
  circle(825,525,100);
  
  button(675,525,50);
  fill(black);
  circle(675,525,100);
  
  button(675,675,50);
  fill(white);
  circle(675,675,100);
  
  
  fill(selected);
  stroke(white);
  rect(50,25,525,825);
}

void mouseReleased(){
  if(dist(150,500,mouseX,mouseY)<=50){
    //selected=lightBlue;
  }
  if(dist(300,500,mouseX,mouseY)<=50){
    selected=cyan;
  }
  if(dist(450,500,mouseX,mouseY)<=50){
    //selected=oceanBlue;
  }
}

void button(int x,int y,int r){
  if (dist(x,y,mouseX,mouseY)<=r){
    stroke(255);
  }else{
    stroke(frame);
  }
}
