abstract class Enemy {
  abstract void Move();
}

class Zombie extends Enemy{
  void Move(){
    println("a zombie is stumbling");
  }
}

class Spider extends Enemy{
  void Move(){
    println("a spider climbs the walls");
  }
}

void setup(){
  Enemy enemy = new Spider();
  enemy.Move();
}
