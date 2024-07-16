int size = 40;
Snake snake = new Snake(5,5);
Apple apple;

void setup(){
  size(640,440);
  noStroke();
  RespawnApple();
  
  println( (int) random(0,100) );
}

void draw(){
  if(frameCount%15 == 0){
    snake.Move();
    
    if(snake.x<0){
      snake.x = 15;
    }
    else if(snake.x>15){
      snake.x = 0;
    }
    if(snake.y<0){
      snake.y = 10;
    }
    else if(snake.y>10){
      snake.y = 0;
    }
    
    if(snake.x == apple.x && snake.y == apple.y){
      RespawnApple();
    }
      
    background(50);
    snake.Draw();
    apple.Draw();
  }
  
  if(keyPressed){
    if(key=='a'){
      snake.dx = -1;
      snake.dy = 0;
    }
    else if(key=='d'){
      snake.dx = 1;
      snake.dy = 0;
    }
    else if(key=='w'){
      snake.dx = 0;
      snake.dy = -1;
    }
    else if(key=='s'){
      snake.dx = 0;
      snake.dy = 1;
    }
  }
}


void RespawnApple(){
int gridWidth = width/size
int gridHeight = height/size;
int gridX = (int)random(0,gridWidth);
int gridY = (int)random(0,gridHeight);
apple = new Apple(gridX,gridY);
}
