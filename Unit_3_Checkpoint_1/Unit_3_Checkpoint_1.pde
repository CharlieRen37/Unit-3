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
  
  button(150,500,50);
  fill(lightBlue);
  circle(150,500,100);
  
  button(300,500,50);
  fill(cyan);
  circle(300,500,100);
  
  button(450,500,50);
  fill(oceanBlue);
  circle(450,500,100);
  
  fill(selected);
  stroke(darkBlue);
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
