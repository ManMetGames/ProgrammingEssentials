---
layout: default
---

<H1>Extras: Abstract Classes</H1>
When making use of inheritance, sometimes we might want to define a type that itself should never be created.
For example, we might want to make an Enemy class, with child classes for a Zombie and Spider.<br>

<img src="../Images/abstract_enemy.png" width="250" height="125">



<br>
In this scenario, we can create Zombie objects and Spider objects, but we can also create Enemy objects, which doesn’t make as much sense. What is an enemy, if it isn’t one of its child class objects?
In these circumstances we can use an “abstract” class.

Copy and paste the code below into a blank Processing project:<br>
{% highlight java %}
class Enemy {
  void Attack(){
    println("a generic enemy is attacking");
  }
}

class Zombie extends Enemy{
  void Attack(){
    println("a zombie is attacking");
  }
}

class Spider extends Enemy{
}

void setup(){
  Enemy enemy = new Zombie();
  enemy.Attack();
}
{% endhighlight %}


When you run the program, you should see that the console prints out "a zombie is attacking". This is because we’re making use of polymorphism, to store a zombie object in an enemy variable (which is fine because the Zombie class extends the Enemy class).<br>
But with the code as it currently is, we could change the line of code where we create the enemy variable to the line below:<br>
{% highlight java %}
Enemy enemy = new Enemy();
{% endhighlight %}<br>

If we run the program with this change, we should see that the console prints out "a generic enemy is attacking". The code runs perfectly, but what is a generic enemy? What does it look like? How does it attack? We’ve created an object of a class that we only ever wanted to use as a parent class to define similar functionality.

This is where abstraction comes in!

<h2 id="creating_an_abstract_class">Creating an Abstract Class</h2>
Add the word "abstract" in front of the Enemy class declaration like below:<br>
{% highlight java %}
abstract class Enemy {
{% endhighlight %}<br>

You should now see that the line of code where we try to create the enemy object is giving us an error. This is because we’re trying to create an object from a class that we’ve marked as abstract, which means we only ever want to be able to create objects of classes that extend it.

To fix the code, change the enemy variable to a Spider.

<h2>Abstract Methods</h2>
If we run the program again, we should see that the spider object will fall back on the abstract class Attack method, meaning we get "a generic enemy is attacking" again in the console. But what if we decided that all enemies should have an attack, but they should always have to override the Attack method, and never rely on the generic one that the Enemy class currently has?<br>
This is where abstract methods come in!<br>
Similarly to abstract classes, we can tell a method that it is also abstract, meaning child classes will have to override it, as it can't be called, in the same way that an object can't be created from an abstract class.<br>
To make the Attack method abstract, we can again just add the abstract keyword in-front of it:<br>
{% highlight java %}
abstract void Attack(){
{% endhighlight %}<br>
This will give us an error, because the Spider class isn't overriding the Attack method!

<h3>Task</h3>
<blockquote>Override the Attack method in the Spider class, so that it prints out "a spider is attacking"</blockquote><br>

The program should now run happily!

<h1>VIDEO HERE</h1>

<h2>Summary</h2>
Abstraction offers us a way to define whether we want a class to not be creatable, so that we can have parent classes that don’t have to fill out all of the functionality that their child classes should contain, making our code more robust for extending it in the future!



