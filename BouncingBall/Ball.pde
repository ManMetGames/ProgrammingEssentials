class Ball{
  
  int x;
  int y;
  int size;
  int accelerationY;
  int gravity = 8;
  float airResistance = 0.99;
  
  Ball(int startX, int startY, int startSize){
    x = startX;
    y = startY;
    size = startSize;
  }
  
  void Draw(){
    fill(255,0,0);
    ellipse(x,y,size,size);
  }
  
  void Move(){
    y = y + accelerationY;
    accelerationY = accelerationY + gravity;
    
    if(y > height){
      accelerationY = accelerationY * -1;
    }
    
    accelerationY = (int)(accelerationY * airResistance);
  }
  
}
