int size = 40;
int gridWidth = 25;
int gridHeight = 15;

Apple apple;
Snake snake = new Snake(200, 200);

void setup() {
  //setup
  size(640, 440);
  noStroke();
  gridWidth = width/size;
  gridHeight = height/size;

  RespawnApple();
}

void draw() {
  //draw background
  background(50);

  if (frameCount % 15 == 0) {
    snake.Move();

    if (snake.head.x==apple.x && snake.head.y==apple.y) {
      //collision
      RespawnApple();
      snake.Grow();
    }
    if (snake.hasCrashed) {
      ResetGame();
    }
    else if(GetFreePositions().size()==0){
      ResetGame();
    }
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
  ArrayList<Position> freePositions = GetFreePositions();
  if (freePositions.size()>0) {
    int elementNumber = (int)random(0, freePositions.size());
    Position selectedPosition = freePositions.get(elementNumber);
    apple = new Apple(selectedPosition.x, selectedPosition.y);
  }
}

ArrayList<Position> GetFreePositions() {
  ArrayList<Position> freePositions = new ArrayList<Position>();
  for (int x = 0; x < gridWidth; x=x+1) {
    for (int y = 0; y < gridHeight; y=y+1) {
      Position space = new Position(x*size, y*size);
      if (!snake.HasSegmentAt(space.x, space.y)) {
        freePositions.add(space);
      }
    }
  }
  return freePositions;
}

void ResetGame() {
  RespawnApple();
  snake = new Snake(200, 200);
}
