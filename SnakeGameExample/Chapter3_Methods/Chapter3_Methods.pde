float snakeX = 5;
float snakeY = 5;
float appleX = 10;
float appleY = 5;
int size = 40;

void setup(){
  size(640,440);
  noStroke();
}

void draw(){
  snakeX += 0.1f;
    
  background(50);
  DrawSnake();
  DrawApple();
}

void DrawSnake(){
  fill(0,255,0);
  rect(snakeX*size,snakeY*size,size,size);
}

void DrawApple(){
  fill(255,0,0);
  rect(appleX*size, appleY*size, size, size);
}
