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
color selected;

void setup(){
  size(900,900);
  strokeWeight(5);
  stroke(darkBlue);
  selected=oceanBlue;
}

void draw(){
  background(background);
  
  button(150,500,50);
  fill(red);
  circle(150,500,100);
  
  button(300,500,50);
  fill(green);
  circle(300,500,100);
  
  button(450,500,50);
  fill(cyan);
  circle(450,500,100);
  
  button(150,500,50);
  fill(blue);
  circle(150,500,100);

  button(450,500,50);
  fill(pink);
  circle(450,500,100);
  
  button(450,500,50);
  fill(purple);
  circle(450,500,100);
  
  button(450,500,50);
  fill(yellow);
  circle(450,500,100);
  
  button(450,500,50);
  fill(orange);
  circle(450,500,100);
  
  button(450,500,50);
  fill(black);
  circle(450,500,100);
  
  button(450,500,50);
  fill(white);
  circle(450,500,100);
  
  
  fill(selected);
  stroke(white);
  rect(100,50,400,350);
}

void mouseReleased(){
  if(dist(150,500,mouseX,mouseY)<=50){
    selected=lightBlue;
  }
  if(dist(300,500,mouseX,mouseY)<=50){
    selected=cyan;
  }
  if(dist(450,500,mouseX,mouseY)<=50){
    selected=oceanBlue;
  }
}

void button(int x,int y,int r){
  if (dist(x,y,mouseX,mouseY)<=r){
    stroke(255);
  }else{
    stroke(darkBlue);
  }
}
