float sliderY;


void setup(){
  size(600,600);
  stroke(5);
  fill(255,172,5);
  sliderY=300;
}

void draw(){
  background(255);
  line(300,100,300,500);
  square(275,sliderY,50);
}

void mouseDragged(){
  slider();
}

void mouseReleased(){
  slider();
}

void slider(){
  if(mouseX<=330&&mouseX>=270&&mouseY>=100&&mouseY<=500){
    sliderY=mouseY-25;
  }
}
  
