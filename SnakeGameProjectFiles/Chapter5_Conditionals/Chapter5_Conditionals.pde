int size = 40;

Apple apple;
Snake snake = new Snake(200, 200);

void setup() {
  //setup
  size(640, 440);
  noStroke();
  RespawnApple();
}

void draw() {
  //draw background
  background(50);

  if(frameCount % 15 == 0){
    snake.Move();
  }
  
  snake.Draw();

  apple.Draw();

  if (keyPressed) {
    if (key == 'w' || key == 'W' ) {
      snake.movementX = 0;
      snake.movementY = -1;
    } else if (key == 's' || key == 'S') {
      snake.movementX = 0;
      snake.movementY = 1;
    } else if (key == 'a' || key == 'A') {
      snake.movementX = -1;
      snake.movementY = 0;
    } else if (key == 'd' || key == 'D') {
      snake.movementX = 1;
      snake.movementY = 0;
    }
  }
}

void RespawnApple() {

  int gridWidth = width / size;
  int gridHeight = height / size;

  int gridX = (int)random(0, gridWidth);
  int gridY = (int)random(0, gridHeight);

  int finalX = gridX * size;
  int finalY = gridY * size;

  apple = new Apple(finalX, finalY);
}
