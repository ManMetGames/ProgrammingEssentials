class Apple{
  int x;
  int y;
  
  Apple(int startX, int startY){
    x = startX;
    y = startY;
  }
  
  void Draw(){
    fill(255,0,0);
    rect(x*size,y*size,size,size);
  }
  
}
