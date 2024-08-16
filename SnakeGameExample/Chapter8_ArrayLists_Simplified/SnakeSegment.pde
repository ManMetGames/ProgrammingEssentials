class SnakeSegment{
  int x;
  int y;
  
  SnakeSegment(int startX, int startY){
    x = startX;
    y = startY;
  }
  
  void Draw(){
    fill(0,255,0);
    rect(x*size,y*size,size,size);
  }
}
