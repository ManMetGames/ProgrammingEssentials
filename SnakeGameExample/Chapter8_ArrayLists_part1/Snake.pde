class Snake{
  int dx = 1;
  int dy = 0;
  
  ArrayList<SnakeSegment> segments = new ArrayList<SnakeSegment>();
  SnakeSegment head;
  
  Snake(int startX, int startY){
    for(int i = 0; i < 3; i++){    
      segments.add(new SnakeSegment(startX-i,startY));
    }
    head = segments.get(0);
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
    fill(0,255,0);
    for(SnakeSegment s : segments){    
      rect(s.x*size,s.y*size,size,size);
    }
  }
  
  
  
}
