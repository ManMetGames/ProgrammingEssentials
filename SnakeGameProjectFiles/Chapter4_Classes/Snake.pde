class Snake {
  int x = 200;
  int y = 200;

  Snake(int startX, int startY){
    x = startX;
    y = startY;
  }

  void Move() {
    x = x + 1;
  }

  void Draw() {
    //draw snake
    fill(0, 255, 0);
    rect(x, y, size, size);
  }
}
