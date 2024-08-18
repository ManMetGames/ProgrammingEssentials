---
layout: default
---

<H1>Extras: Abstract Classes</H1>
When making use of inheritance, sometimes we might want to define a type that itself should never be created.
For example, we might want to make an Enemy class, with child classes for a Zombie and Skeleton.<br>
<h1>IMAGE HERE</h1>
<br>
In this scenario, we can create Zombie objects and Skeleton objects, but we can also create Enemy objects, which doesn’t make as much sense. What is an enemy, if it isn’t one of its child class objects?
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

class Skeleton extends Enemy{
  void Attack(){
    println("a skeleton is attacking");
  }
}

void setup(){
  Enemy enemy = new Skeleton();
  enemy.Attack();
}
{% endhighlight %}


When you run the program, you should see that the console prints out "a skeleton is attacking". This is because we’re making use of polymorphism, to store a skeleton object in an enemy variable (which is fine because the Skeleton class extends the Enemy class).<br>
But with the code as it currently is, we could change the line of code where we create the enemy variable to the line below:<br>
{% highlight java %}
Enemy enemy = new Enemy();
{% endhighlight %}<br>

If we run the program with this change, we should see that the console prints out "a generic enemy is attacking". The code runs perfectly, but what is a generic enemy? What does it look like? How does it attack? We’ve created an object of a class that we only ever wanted to use as a parent class.

This is where abstraction comes in!

<h2 id="creating_an_abstract_class">Creating an Abstract Class</h2>
Edit the Enemy class to reflect the changes below:<br>
{% highlight java %}
abstract class Enemy {
  void Attack();
}
{% endhighlight %}<br>

You should now see that the line of code where we try to create the enemy object is giving us an error. This is because we’re trying to create an object from a class that we’ve marked as abstract, which means we only ever want to be able to create objects of classes that extend it.

When creating an abstract class, we put the abstract keyword ahead of the class definition. Any methods inside the class then end after the round brackets with a semicolon, instead of with curly brackets and code. This is because we’re defining what methods we want inside classes that extend the class, but not actually writing the code to be executed, as we never want to actually create an object of this type.

Because the class is abstract, the method declarations inside it now act as a promise that all classes extending it will have methods with these names (and the related parameters).

To fix the code, change the enemy variable back to a Skeleton.

<h2 id="creating_an_abstract_class">Extending an Abstract Class</h2>
Now, if we want to extend the Enemy class, we need to make sure that we keep the promises made by it being abstract. Paste the following code at the bottom of your program to add a Spider class:<br>
{% highlight java %}
class Spider extends Enemy {
}
{% endhighlight %}<br>

This should cause an **error**! We’ve extended from the Enemy class but we’ve not written an Attack method, which is promised in the Enemy class!

To fix this, inside the curly brackets of the Enemy class, add the following code:<br>
{% highlight java %}
void Attack() {
    println("a spider is attacking");
}
{% endhighlight %}

The program should now run happily!

<h1>VIDEO HERE</h1>

<h2>Summary</h2>
Abstraction offers us a way to define whether we want a class to not be creatable, so that we can have parent classes that don’t have to fill out all of the functionality that their child classes should contain, making our code more robust for extending it in the future!

<h2>Extra Task</h2>
<blockquote>
</blockquote>


