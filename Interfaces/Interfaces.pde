class Plant{
  void Grow(){}
}

class Carrot extends Plant{
  void BeEaten(){
    println("Health increased!");
  }
}

class Cake {
  void BeEaten(){
    println("Health decreased!");
  }
}

void setup(){
  Cake cake = new Cake();
  Eat(cake);
}

void Eat(Cake food){
  food.BeEaten();
}
