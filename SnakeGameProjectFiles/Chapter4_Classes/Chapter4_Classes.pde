int size = 40;

Apple apple;
Snake snake = new Snake(200,200);

void setup(){
  //setup
  size(640,440);
  noStroke();
  RespawnApple();
  
}

void draw(){
  //draw background
  background(50);
  
  snake.Move();
  snake.Draw();
  
  apple.Draw();
}

void RespawnApple(){
  
  int gridWidth = width / size;
  int gridHeight = height / size;
  
  int gridX = (int)random(0,gridWidth);
  int gridY = (int)random(0,gridHeight);
  
  int finalX = gridX * size;
  int finalY = gridY * size;
  
  apple = new Apple(finalX,finalY);
}
