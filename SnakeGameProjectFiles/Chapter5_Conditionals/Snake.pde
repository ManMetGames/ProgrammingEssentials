class Snake {
  int x = 200;
  int y = 200;
  
  int movementX = 0;
  int movementY = 1;

  Snake(int startX, int startY){
    x = startX;
    y = startY;
  }

  void Move() {
    x = x + movementX*size;
    y = y + movementY*size;
  }

  void Draw() {
    //draw snake
    fill(0, 255, 0);
    rect(x, y, size, size);
  }
}
