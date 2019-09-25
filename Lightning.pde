int x;
int y;
float randX;
float randY;
int clicks = 0;
int shift = 70;
int[] powers = {10,100,1000,10000,100000};




void setup(){
  size(500,500);
  background(0);
}

void draw(){
  stroke(255,255,0);
  while(y < 500){
    drawBolt();
  }
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
  textSize(72);
  background(0);
  text(clicks,width - shift,80);
  clicks++;
  for(int i = 0; i < 5; i++){
    if(clicks == powers[i]){
      shift = shift + 50;
    }
  }

}

void drawBolt(){
  randX = random(-6,6);
  randY = random(2,6);
  line(x,y,x + randX,y + randY);
  x += randX;
  y += randY;
}

