class Snake{
  int dx = 1;
  int dy = 0;
  
  SnakeSegment[] segments = new SnakeSegment[3];
  
  Snake(int startX, int startY){
    segments[0] = new SnakeSegment(startX-0,startY);
    segments[1] = new SnakeSegment(startX-1,startY);
    segments[2] = new SnakeSegment(startX-2,startY);
  }
  
  void Move(){
    segments[2].x = segments[1].x;
    segments[2].y = segments[1].y;
    
    segments[1].x = segments[0].x;
    segments[1].y = segments[0].y;
    
    segments[0].x += dx;
    segments[0].y += dy;
  }
  
  void Draw(){
    fill(0,255,0);
    rect(segments[0].x*size,segments[0].y*size,size,size);
    rect(segments[1].x*size,segments[1].y*size,size,size);
    rect(segments[2].x*size,segments[2].y*size,size,size);
  }
  
  
  
}
