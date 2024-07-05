int size = 40;
Snake snake;
Apple apple;

void setup(){
  size(640,440);
  noStroke();
  snake = new Snake(5,5);
  apple = new Apple(10,5);
}

void draw(){
  snake.Move();
    
  background(50);
  snake.Draw();
  apple.Draw();
}
