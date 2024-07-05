class GameManager {

  public Snake snake;
  public Apple apple;

  public int gridWidth = 25;
  public int gridHeight = 15;
  

  public GameManager(){
    ResetGame();
  }

  public void Update() {
    if (frameCount%10 == 0) {
      background(50);
      snake.Move();

      snake.WrapRound(gridWidth, gridHeight);
      if (snake.head.pos.x == apple.pos.x && snake.head.pos.y == apple.pos.y) {
        RespawnApple();
        snake.Grow();
      }

      if (GetFreePositions().size()==0) {
        //win
        ResetGame();
      } else if (snake.hasCrashed) {
        //lose
        ResetGame();
      }
    }
  }

  public void Render() {
    snake.Render();
    apple.Render();
  }

  public void KeyPressed() {
    switch(key) {
    case 'A':
    case 'a':
      snake.TrySetNextMoveDirection(Direction.LEFT);
      break;
    case 'D':
    case 'd':
      snake.TrySetNextMoveDirection(Direction.RIGHT);
      break;
    case 'W':
    case 'w':
      snake.TrySetNextMoveDirection(Direction.UP);
      break;
    case 'S':
    case 's':
      snake.TrySetNextMoveDirection(Direction.DOWN);
      break;
    }
  }


  void ResetGame() {
    snake = new Snake(5, 10);
    RespawnApple();
  }

  void RespawnApple() {
    ArrayList<Position> freePositions = GetFreePositions();
    if (freePositions.size()>0) {
      Position selectedPosition = freePositions.get((int)random(0, freePositions.size()));
      apple = new Apple(selectedPosition.x, selectedPosition.y);
    }
  }

  ArrayList<Position> GetFreePositions() {
    ArrayList<Position> freePosition = new ArrayList<Position>();
    for (int x = 0; x < gridWidth; x++) {
      for (int y = 0; y < gridHeight; y++) {
        if (!snake.HasSegmentAt(x, y)) {
          freePosition.add(new Position(x, y));
        }
      }
    }
    return freePosition;
  }
}
