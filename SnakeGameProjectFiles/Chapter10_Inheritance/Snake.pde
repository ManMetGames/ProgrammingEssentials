class Snake {

  boolean hasCrashed = false;

  ArrayList<SnakeSegment> segments = new ArrayList<SnakeSegment>();
  SnakeSegment head;

  int movementX = 0;
  int movementY = 1;

  Snake(int startX, int startY) {

    for (int i = 0; i < 3; i = i+1) {
      segments.add( new SnakeSegment(startX, startY) );
    }

    head = segments.get(0);
  }

  void Move() {

    for (int i = segments.size()-1; i > 0; i=i-1) {
      segments.get(i).x = segments.get(i-1).x;
      segments.get(i).y = segments.get(i-1).y;
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

    for (int i = 1; i < segments.size(); i=i+1) {
      if (head.x == segments.get(i).x && head.y == segments.get(i).y) {
        hasCrashed = true;
      }
    }
  }

  void Draw() {
    //draw snake

    for (SnakeSegment s : segments) {
      s.Draw();
    }
  }

  void Grow() {
    SnakeSegment tail = segments.get(segments.size()-1);
    segments.add( new SnakeSegment(tail.x, tail.y) );
  }

  boolean HasSegmentAt(int x, int y) {
    for (SnakeSegment s : segments) {
      if (s.x == x && s.y == y) {
        return true;
      }
    }
    return false;
  }
}
