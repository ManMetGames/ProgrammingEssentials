int size = 40;
int snakeX = 200;
int snakeY = 200;
int appleX = 400;
int appleY = 200;


void setup(){
  //setup
  size(640,440);
  noStroke();
}

void draw(){
  //draw background
  background(50);
  
  DrawSnake();
  
  DrawApple();
  
}

void DrawSnake(){
  //draw snake
  fill(0,255,0);
  rect(snakeX,snakeY,size,size);
  snakeX = snakeX + 1;
}

void DrawApple(){
  //draw apple
  fill(255,0,0);
  rect(appleX,appleY,size,size);
}
