class SnakeSegment extends Position{
  
  SnakeSegment(int startX, int startY){
    super(startX, startY);
  }

  void Draw(){
    fill(0,200,0);
    rect(x,y,size,size);
  }

}
