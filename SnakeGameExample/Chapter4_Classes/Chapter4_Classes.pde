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
  snake.Move();
    
  background(50);
  snake.Draw();
  apple.Draw();
}
