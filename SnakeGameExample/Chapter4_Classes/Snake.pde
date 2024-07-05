class Snake{
  int x;
  int y;
  
  Snake(int startX, int startY){
    x = startX;
    y = startY;
  }
  
  void Move(){
    x += 3f;
  }
  
  void Draw(){
    fill(0,255,0);
    rect(x,y,size,size);
  }
  
}
