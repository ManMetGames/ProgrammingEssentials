
GameManager game;

void setup(){
  size(1040,640);
  game = new GameManager();
}

void draw(){
  game.Update();
  game.Render();
}

void keyPressed(){
  game.KeyPressed();
}
