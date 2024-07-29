class Snake{
  int dx = 1;
  int dy = 0;
  
  SnakeSegment[] segments = new SnakeSegment[10];
  
  Snake(int startX, int startY){
    for(int i = 0; i < segments.length; i++){    
      segments[i] = new SnakeSegment(startX,startY);
    }
  }
  
  void Move(){
    for(int i = segments.length-1; i > 0; i--){
      segments[i].x = segments[i-1].x;
      segments[i].y = segments[i-1].y;
    }
    
    segments[0].x += dx;
    segments[0].y += dy;
  }
  
  void Draw(){
    fill(0,255,0);
    for(SnakeSegment s : segments){    
      rect(s.x*size,s.y*size,size,size);
    }
  }
  
  
  
}
