class Snake{
  float x;
  float y;
  
  Snake(float startX, float startY){
    x = startX;
    y = startY;
  }
  
  void Move(){
    x += 0.1f;
  }
  
  void Draw(){
    fill(0,255,0);
    rect(x*size,y*size,size,size);
  }
  
}
