class Apple{
  float x;
  float y;
  
  Apple(float startX, float startY){
    x = startX;
    y = startY;
  }
  
  void Draw(){
    fill(255,0,0);
    rect(x*size,y*size,size,size);
  }
  
}
