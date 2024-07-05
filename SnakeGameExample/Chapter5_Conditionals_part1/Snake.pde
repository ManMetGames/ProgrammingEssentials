class Snake{
  int x;
  int y;
  int dx = 1;
  int dy = 0;
  
  Snake(int startX, int startY){
    x = startX;
    y = startY;
  }
  
  void Move(){
    x += dx;
    y += dy;
  }
  
  void Draw(){
    fill(0,255,0);
    rect(x*size,y*size,size,size);
  }
  
  
  
}
