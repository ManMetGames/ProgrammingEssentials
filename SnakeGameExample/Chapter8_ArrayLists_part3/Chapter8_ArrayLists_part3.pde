int size = 40;
int gridWidth = 15;
int gridHeight = 10;

Snake snake;
Apple apple;

void setup(){
  size(640,440);
  noStroke();
  ResetGame();
}

void draw(){
  if(frameCount%15 == 0){
    snake.Move();
    
    if(snake.head.x<0){
      snake.head.x = gridWidth;
    }
    else if(snake.head.x>gridWidth){
      snake.head.x = 0;
    }
    if(snake.head.y<0){
      snake.head.y = gridHeight;
    }
    else if(snake.head.y>gridHeight){
      snake.head.y = 0;
    }
    
    if(snake.head.x == apple.x && snake.head.y == apple.y){
      snake.Grow();
      RespawnApple();
    }
    
    if(snake.hasCrashed){
      ResetGame();
    }
    
    background(50);
    snake.Draw();
    apple.Draw();
  }
}

void ResetGame(){
  snake = new Snake(5,5);
  RespawnApple();
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
  ArrayList<Position> freePositions = GetFreePositions();
  Position newPosition = freePositions.get((int)random(0,freePositions.size()));
  apple = new Apple(newPosition.x, newPosition.y);
}

ArrayList<Position> GetFreePositions(){
  ArrayList<Position> freePositions = new ArrayList<Position>();
  for(int y = 0; y < gridHeight; y++){
    for(int x = 0; x < gridWidth; x++){
      if(!snake.HasSegmentAt(x,y)){
        Position freePos = new Position(x,y);
        freePositions.add(freePos);
      }
    }
  }
  return freePositions;
}
