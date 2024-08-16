class Snake{
  int dx = 1;
  int dy = 0;
  
  ArrayList<SnakeSegment> segments = new ArrayList<SnakeSegment>();
  
  Snake(int startX, int startY){
    segments.add(new SnakeHead(startX,startY));
    for(int i = 0; i < 3; i++){    
      segments.add(new SnakeSegment(startX,startY));
    }
  }
  
  void Move(){
    for(int i = segments.size()-1; i > 0; i--){
      segments.get(i).x = segments.get(i-1).x;
      segments.get(i).y = segments.get(i-1).y;
    }
    
    segments.get(0).x += dx;
    segments.get(0).y += dy;
  }
  
  void Draw(){
    for(SnakeSegment s : segments){    
      s.Draw();
    }
  }
  
  
  
}
