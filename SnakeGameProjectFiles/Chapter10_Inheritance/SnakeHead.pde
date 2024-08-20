class SnakeHead extends SnakeSegment{
  
  SnakeHead(int startX, int startY){
    super(startX, startY);
  }
  
  void Draw(){
    fill(0,255,0);
    rect(x,y,size,size);
  }
  
  
}
