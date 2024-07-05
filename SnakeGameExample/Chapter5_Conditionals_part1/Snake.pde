class Snake{
  int x;
  int y;
  int dx = 0;
  int dy = 0;
  
  Snake(int startX, int startY){
    x = startX;
    y = startY;
    dx = size;
  }
  
  void Move(){
    x += dx;
    y += dy;
  }
  
  void Draw(){
    fill(0,255,0);
    rect(x,y,size,size);
  }
  
  
  
}
