class Apple extends Position{

  Apple(int startX, int startY){
    super(startX, startY);
  }
  
  void Draw() {
    //draw apple
    fill(255, 0, 0);
    rect(x, y, size, size);
  }
}
