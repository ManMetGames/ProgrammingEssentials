class Snake {
  public boolean hasCrashed = false;
  Direction moveDirection = Direction.DOWN;
  Direction nextDirection = Direction.DOWN;
  ArrayList<SnakeSegment> segments = new ArrayList<SnakeSegment>();
  public SnakeSegment head;
  
  
  public Snake(int startX, int startY){
    segments = new ArrayList<SnakeSegment>();
    head = new SnakeSegment(startX, startY);
    segments.add(head);
  }
  
  public void Grow(){
    SnakeSegment lastSegment = segments.get(segments.size()-1);
    SnakeSegment newSegment = new SnakeSegment(lastSegment.pos.x,lastSegment.pos.y);
    segments.add(newSegment);
  }
  
  public void Render(){
    for(SnakeSegment s : segments){
      s.Render();
    }
  }
  
  public void Move(){
    for(int i = segments.size()-1; i > 0; i--)
    {
      segments.get(i).pos.x = segments.get(i-1).pos.x;
      segments.get(i).pos.y = segments.get(i-1).pos.y;
    }
    
    switch(moveDirection)
    {
      case UP: head.pos.y -= 1;
      break;
      case DOWN: head.pos.y += 1;
      break;
      case LEFT: head.pos.x -= 1;
      break;
      case RIGHT: head.pos.x += 1;
      break;
    }
    
    for(int i = 1; i < segments.size(); i++){
      SnakeSegment currentSegment = segments.get(i);
      if(head.pos.x==currentSegment.pos.x && head.pos.y==currentSegment.pos.y){
        hasCrashed = true;
      }
    }
    
    moveDirection = nextDirection;
  }
  
  public void WrapRound(int w, int h){
    if(head.pos.x<0){
        head.pos.x = w;
      }
      if(head.pos.x>w){
        head.pos.x = 0;
      }
      if(head.pos.y<0){
        head.pos.y = h;
      }
      if(head.pos.y>h){
        head.pos.y = 0;
      }
  }
  
  public void TrySetNextMoveDirection(Direction newDirection){
    if(moveDirection==Direction.LEFT && newDirection!=Direction.RIGHT){
      nextDirection = newDirection;
    }
    else if(moveDirection==Direction.RIGHT && newDirection!=Direction.LEFT){
      nextDirection = newDirection;
    }
    else if(moveDirection==Direction.UP && newDirection!=Direction.DOWN){
      nextDirection = newDirection;
    }
    else if(moveDirection==Direction.DOWN && newDirection!=Direction.UP){
      nextDirection = newDirection;
    }
  }
  
  public boolean HasSegmentAt(int x, int y){
    for(SnakeSegment s : segments){
      if(s.pos.x==x && s.pos.y==y){
        return true;
      }
    }
    return false;
  }
  
}
