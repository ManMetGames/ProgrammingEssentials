int snakeX = 200;
int snakeY = 200;
int appleX = 400;
int appleY = 200;
int size = 40;

void setup(){
  size(640,440);
  noStroke();
}

void draw(){
  snakeX += 3;
    
  background(50);
  DrawSnake();
  DrawApple();
}

void DrawSnake(){
  fill(0,255,0);
  rect(snakeX,snakeY,size,size);
}

void DrawApple(){
  fill(255,0,0);
  rect(appleX, appleY, size, size);
}
