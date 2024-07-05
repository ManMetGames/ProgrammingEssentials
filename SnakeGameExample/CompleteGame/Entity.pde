class Entity{
  public Position pos;
  private color col;
  
  public Entity(int startX, int startY, color col){
    pos = new Position(startX, startY);
    this.col = col;
  }
  
  public void Render(){
    fill(col);
    noStroke();
    rect(pos.x*40,pos.y*40,40,40);
  }
}
