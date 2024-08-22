class Plant{}
class Carrot extends Plant implements IEdible{
  void BeEaten(){
    println("Health increased!");
  }
}

class Cake implements IEdible{
  void BeEaten(){
    println("Health decreased!");
  }
}

void setup(){
  Carrot carrot = new Carrot();
  Cake cake = new Cake();
  Eat(carrot);
  Eat(cake);
}

void Eat(IEdible food){
  food.BeEaten();
}
