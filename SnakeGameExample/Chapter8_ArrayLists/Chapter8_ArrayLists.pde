int size = 40;
Snake snake;
Apple apple;

void setup(){
  size(640,440);
  noStroke();
  snake = new Snake(5,5);
  RespawnApple();
}

void draw(){
  if(frameCount%15 == 0){
    snake.Move();
    
    if(snake.head.x<0){
      snake.head.x = 15;
    }
    else if(snake.head.x>15){
      snake.head.x = 0;
    }
    if(snake.head.y<0){
      snake.head.y = 10;
    }
    else if(snake.head.y>10){
      snake.head.y = 0;
    }
    
    if(snake.head.x == apple.x && snake.head.y == apple.y){
      RespawnApple();
    }
      
    background(50);
    snake.Draw();
    apple.Draw();
  }
}

void keyPressed(){
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

void RespawnApple(){
  apple = new Apple((int)random(0,15),(int)random(0,10));
}
