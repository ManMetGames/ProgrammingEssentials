class Snake {

  SnakeSegment[] segments = new SnakeSegment[3];
  SnakeSegment head;

  int movementX = 0;
  int movementY = 1;

  Snake(int startX, int startY) {
    
    for(int i = 0; i < segments.length; i = i+1){
      segments[i] = new SnakeSegment(startX, startY);
    }

    head = segments[0];
  }

  void Move() {
    
    for(int i = segments.length-1; i > 0; i=i-1){
      segments[i].x = segments[i-1].x;
      segments[i].y = segments[i-1].y;
    }
    
    head.x = head.x + movementX*size;
    head.y = head.y + movementY*size;

    if (head.x >= width) {
      head.x = 0;
    } else if (head.x < 0) {
      head.x = width-size;
    }

    if (head.y >= height) {
      head.y = 0;
    } else if (head.y < 0) {
      head.y = height - size;
    }

  }

  void Draw() {
    //draw snake
    
    for(SnakeSegment s : segments){
      s.Draw();
    }
  }
}
