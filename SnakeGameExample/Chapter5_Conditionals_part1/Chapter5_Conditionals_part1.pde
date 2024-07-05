int size = 40;
Snake snake;
Apple apple;

void setup(){
  size(640,440);
  noStroke();
  snake = new Snake(200,200);
  apple = new Apple(400,200);
}

void draw(){
  if(frameCount%15 == 0){
    snake.Move();
    
    if(snake.x == apple.x && snake.y == apple.y){
      apple = new Apple((int)random(0,15)*size,(int)random(0,10)*size);
    }
      
    background(50);
    snake.Draw();
    apple.Draw();
  }
}
