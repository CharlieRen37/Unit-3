PImage butterfly, tung;
//color and stroke indicator on knob and line
//save, cleaar, load button
//stamps



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
color grey = #939393;
color frame = #8b5e34;
color selected;
boolean back_ground;
float sliderY, S;
int condition;
boolean flyOn;
boolean tungOn;
color square1;
color square2;
float scale;
color resetOn,resetOff;

void setup(){
  background(background);
  size(900,900);
  strokeWeight(3);
  stroke(frame);
  selected=white;
  sliderY=430;
  noStroke();
  fill(white);
  rect(0,0,740,900);
  butterfly = loadImage("butterfly.png");
  tung = loadImage("Tung.png");
  square1=white;
  square2=white;
}

void draw(){
  noStroke();
  fill(background);
  rect(740,0,160,900);
  strokeWeight(3);
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
  squareButton(770,870,575,675);
  strokeWeight(5);
  fill(square1);
  rect(770,575,100,100);
  image(butterfly, 770,575,100,100);
  fill(square2);
  squareButton(770,870,700,800);
  rect(770,700,100,100);
  image(tung,770,700,100,100);
  
  
  strokeWeight(S);
  stroke(grey);
  line(820,330,820,530);
  strokeWeight(5);
  fill(selected);
  circle(820,sliderY,50);
  S=map(sliderY,530,330,1,30);
  scale=map(sliderY,530,330,1,400);
  
  //clear
  clear(790,750,875,825);
  fill(resetOff);
  rect(750,825,40,50);
  textAlign(CENTER,CENTER);
  fill(resetOn);
  textSize(20);
  text("clear",770,850);
  
  clear(790,750,875,825);
  fill(resetOff);
  rect(750,825,40,50);
  textAlign(CENTER,CENTER);
  fill(resetOn);
  textSize(20);
  text("clear",770,850);
  
  //save
  clear(890,850,875,825);
  fill(resetOff);
  rect(850,825,40,50);
  textAlign(CENTER,CENTER);
  fill(resetOn);
  textSize(20);
  text("save",870,850);
  
  clear(890,850,875,825);
  fill(resetOff);
  rect(850,825,40,50);
  textAlign(CENTER,CENTER);
  fill(resetOn);
  textSize(20);
  text("save",870,850);
  
  //load
  clear(840,800,875,825);
  fill(resetOff);
  rect(800,825,40,50);
  textAlign(CENTER,CENTER);
  fill(resetOn);
  textSize(20);
  text("load",820,850);
  
  clear(840,800,875,825);
  fill(resetOff);
  rect(800,825,40,50);
  textAlign(CENTER,CENTER);
  fill(resetOn);
  textSize(20);
  text("load",820,850);
  
  
  
  
}


void clear(float x1, float x2,float y1,float y2){
  if (mouseX<x1&&mouseX>x2&&mouseY<y1&&mouseY>y2){
resetOff=white;
resetOn=grey;
  }else{
resetOff=grey;
resetOn=white;
  }
}


void sliderY(){
  if (mouseX<845&&mouseX>795&&mouseY<530&&mouseY>330){
    sliderY=mouseY;
  }
}



void mouseReleased(){
  if(dist(790,50,mouseX,mouseY)<=20){
    selected=blue;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(790,110,mouseX,mouseY)<=20){
    selected=cyan;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(850,110,mouseX,mouseY)<=20){
    selected=pink;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(850,50,mouseX,mouseY)<=20){
    selected=purple;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(850,290,mouseX,mouseY)<=20){
    selected=yellow;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(850,230,mouseX,mouseY)<=20){
    selected=orange;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(790,230,mouseX,mouseY)<=20){
    selected=black;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(790,290,mouseX,mouseY)<=20){
    selected=white;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(790,170,mouseX,mouseY)<=20){
    selected=green;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  if(dist(850,170,mouseX,mouseY)<=20){
    selected=red;
    flyOn=false;
    tungOn=false;
    square1=white;
    square2=white;
  }
  sliderY();
  if (mouseX>770&&mouseX<870&&mouseY>575&&mouseY<675||mouseX>770&&mouseX<870&&mouseY>700&&mouseY<800){
    if(mouseX>770&&mouseX<870&&mouseY>575&&mouseY<675){
      square1=red;
      flyOn=true;
      tungOn=false;
    }else{
    square1=white;
    }  
  }
  if (mouseX>770&&mouseX<870&&mouseY>575&&mouseY<675||mouseX>770&&mouseX<870&&mouseY>700&&mouseY<800){
    if(mouseX>770&&mouseX<870&&mouseY>700&&mouseY<800){
    square2=red;
    flyOn=false;
    tungOn=true;
  }else{
    square2=white;
  }
  }
  if(mouseX<740){
  if (flyOn==false){
    if(tungOn==false){
        stroke(selected);
        strokeWeight(S);
        line(pmouseX, pmouseY, mouseX, mouseY);
    }else{
      image(tung,mouseX,mouseY,scale,scale);
    }
  }else if(flyOn==true){
    image(butterfly,mouseX,mouseY,scale,scale);
  }
}else{
  sliderY();
}

//clear
if (mouseX<790&&mouseX>750&&mouseY<875&&mouseY>825){
  noStroke();
  fill(white);
  rect(0,0,740,900);
}

//save
if (mouseX<890&&mouseX>850&&mouseY<875&&mouseY>825){
//
//
//
//
//
}

//load
if (mouseX<840&&mouseX>800&&mouseY<875&&mouseY>825){
//
//
//
//
//
//
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
    stroke(white);
  }else{
    stroke(frame);
  }
}

void mouseDragged(){
if(mouseX<740){
  if (flyOn==false){
    if(tungOn==false){
        stroke(selected);
        strokeWeight(S);
        line(pmouseX, pmouseY, mouseX, mouseY);
    }else{
      image(tung,mouseX,mouseY,scale,scale);
    }
  }else if(flyOn==true){
    image(butterfly,mouseX,mouseY,scale,scale);
  }
}else{
  sliderY();
}
}
