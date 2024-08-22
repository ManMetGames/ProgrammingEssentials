---
layout: default
---

<h1>Extras: Interfaces</h1>

This section covers the use of interfaces (not graphical interfaces!) which are used to allow for polymorphism without using inheritance by outlining expected functionality.

<h2>The Problem</h2>
In some scenarios it’s useful to act on an object in a way that is similar to an object from a completely unrelated class. For example, cake and carrots are both edible. Both could have a BeEaten method, which a person could make use of. But carrots are a type of plant, so they might inherit functionality from the Plant class that tells them how to grow. Cake isn’t a plant, it doesn’t grow. So, we have a conflict, should a carrot be a plant or an eatable object?
Using interfaces, it can be both!

Cake and carrots realistically shouldn’t inherit from the same class, because they’re just too different. But if we knew ahead of time that both had a BeEaten method, then either could be passed into the same method that only takes something that can be eaten.
Copy and paste the following code into a new Processing project:<br>
{% highlight java %}
class Plant{}
class Carrot extends Plant{
  void BeEaten(){
    println("Health increased!");
  }
}

class Cake {
}

void setup(){
  Carrot carrot = new Carrot();
  Cake cake = new Cake();
  Eat(carrot);
  Eat(cake);
}

void Eat(Carrot food){
  food.BeEaten();
}
{% endhighlight %}<br>

This will throw an error immediately! We’re trying to eat a cake, but the Eat method only accepts carrots! Comment out the line of code calling the Eat method with the cake variable for now.

<h2>Creating an Interface</h2>
To allow the method to take either carrots or cakes we’re going to create an interface. In a new tab called IEdible, copy and paste in the code below:<br>
{% highlight java %}
interface IEdible{
  void BeEaten();
}
{% endhighlight %}<br>

We’ve called this IEdible because by convention interfaces start with the letter I, and are then descriptive of what functionality the object should have when it implements it.

Note that the interface code is very similar to a class definition, although the method inside doesn’t have a curly brackets and code.

The interface will act as a promise that any class that implements it will have methods with the same name and parameters!


<h2>Implementing an Interface</h2>
We can tell the Carrot and Cake classes that they are both edible by then adding in the keyword "implements" and the name of the interface ("IEdible") at the end of the class name and any extensions, like in the code below:<br>
{% highlight java %}
class Carrot extends Plant implements IEdible{
  void BeEaten(){
    println("Health increased!");
  }
}

class Cake implements IEdible{
}
{% endhighlight %}<br>

This should create an error! We’re not fulfilling the promise made by the interface, the Cake class doesn’t have a method that matches “BeEaten()” in the interface.

Add the following code into the Cake class:<br>
{% highlight java %}
  void BeEaten(){
    println("Health decreased!");
  }
{% endhighlight %}<br>

We can now change the Eat method to take in anything that implements the IEdible interface by using IEdible as the type, as below:<br>
{% highlight java %}
void Eat(IEdible food){
  food.BeEaten();
}
{% endhighlight %}<br>

We should now be able to eat cake using the same method that we use to eat carrots! Uncomment the line of code where the cake variable is passed into the Eat method, and you should see that there are no longer any errors, and the code runs!



<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/Interfaces.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>


<br>
<h2>Summary</h2>
Interfaces allow us to create variables for types unrelated by inheritance, and work with them in the knowledge that they contain relevant methods.

<h2>More Help</h2>
<ul>
    <li><h3><a href="https://www.youtube.com/watch?v=GhslBwrRsnw" target="_blank">Java interfaces</a></h3></li>
    <li><h3><a href="https://processing.org/reference/implements.html" target="_blank">Processing interface documentation</a></h3></li>
</ul>
<br>