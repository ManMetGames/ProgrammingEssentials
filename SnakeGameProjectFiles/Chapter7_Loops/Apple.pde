class Apple {
  int x = 400;
  int y = 200;
    
  Apple(int startX, int startY){
    x = startX;
    y = startY;
  }
  
  void Draw() {
    //draw apple
    fill(255, 0, 0);
    rect(x, y, size, size);
  }
}
