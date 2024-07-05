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
    
    if(snake.segments[0].x<0){
      snake.segments[0].x = 15;
    }
    else if(snake.segments[0].x>15){
      snake.segments[0].x = 0;
    }
    if(snake.segments[0].y<0){
      snake.segments[0].y = 10;
    }
    else if(snake.segments[0].y>10){
      snake.segments[0].y = 0;
    }
    
    if(snake.segments[0].x == apple.x && snake.segments[0].y == apple.y){
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
