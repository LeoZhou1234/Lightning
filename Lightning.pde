void setup() {
  size(300,300);
  background(0,0,0);
}

void drawLightning(int startX, int startY) {
  int endX, endY;
  while (startY <= 300) {
    float weight = (float)(Math.random()*3)+2;
    endX = startX + (int)(Math.random()*19) - 9;
    endY = startY + (int)(Math.random()*10);
    
    stroke(255, 255, 0);
    strokeWeight(weight);
    line(startX, startY, endX, endY);
    
    stroke(255, 255, 255);
    strokeWeight(weight - 1);
    line(startX, startY, endX, endY);
    
    startX = endX;
    startY = endY;
  }
}

void drawClouds() {
  stroke(50,50,50);
  fill(50,50,50);
  
  ellipse(10,30,200,50);
  ellipse(100,40,150,50);
  ellipse(150,30,150,50);
  ellipse(200,30,250,50);
  ellipse(250,35,150,50);
  rect(0,0,300,50);
}

void draw() {
  fill(0,0,0,10);
  stroke(0,0,0);
  rect(0,0,300,300);
  drawClouds();
}

void mousePressed() {
  int startX = (int)(Math.random()*201) + 50;
  int startY = 50;
  fill(100,100,100);
  stroke(100,100,100);
  rect(0,0,300,300);
  drawLightning(startX, startY);
  drawClouds();
}
