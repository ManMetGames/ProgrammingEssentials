class SnakeHead extends SnakeSegment{
  
  SnakeHead(int startX, int startY){
    super(startX,startY);
  }
  
  void Draw(){
    fill(0,200,0);
    rect(x*size,y*size,size,size);
  }
  
}
