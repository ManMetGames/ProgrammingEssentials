Ball ball;

void setup(){
  size(800,400);
  ball = new Ball(400,200,30);
}

void draw(){
  background(50);
  ball.Move();
  ball.Draw();
}
