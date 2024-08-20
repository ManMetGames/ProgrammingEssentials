---
layout: default
---

<h1>Chapter 10: Inheritance</h1>
<p style="font-size:20px">
At this point, the Snake game is functionally complete, but we can use some more programming techniques to improve the code, whilst learning how to use them!
<br>
For a quick reference, <a href="../QuickReference/inheritance">click here</a>.
<br></p>

<h2>The Problem</h2>
We’ve completed our code, but we have multiple classes that all make use of the same core variables and functionality, realistically, it would have been good to define a class that has an x and y, such as the Position class, and use this as the basis around which the Snake and Apple are created. When creating another class using these variables, or any of the same functionality (methods and functions), we could write out all of the code again, but this isn’t great!

<p style="font-size:20px"><i>There must be a better way!</i></p>



<h2 id="inheritance">Inheritance</h2>
When making a new class, we can inherit variables and functionality from another class by using “inheritance”. As an example of this, lets make the Apple extend the Position class.
In the Apple class, change the class declaration to match the code below:
class Apple extends Position{
We’ve now told the Apple class to inherit from the Position class, by extending it. This means that we don’t need the additional x and y variables in the Apple class, so we can delete them.
Because the Position class then has a custom constructor, we need to pass along the information that it requires, which is two integers for the starting x and y position.
To do this, add the following line of code to the top of the constructor:<br>
{% highlight java %}
    super(startX, startY);
{% endhighlight %}

<h3>Important</h3>
Anywhere we want to access variables or methods from the class we extended (the “superclass”), we use the keyword “super”. As we’re calling the constructor for the super class, we just put super, followed by the information to pass in, which in this case we already have.

This then means that we don’t need to set the value of x to startX and y to startY in the Apple constructor, because this is already done in the Position constructor. 

When we run the code now, the game should look exactly the same as it did before, but we’ve moved a step closer to not having as much duplicated code! Make sure to follow along with the video below if you’re unsure!


<h3>Task</h3>
<blockquote>Adapt your code so that the SnakeSegment class also extends the Position class, and fills out the constructor.</blockquote>

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/Inheritance.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>


<br>
<h2 id="polymorphism">Polymorphism</h2>
When storing an object that is from a child class, we can store it into a variable of the type of its super class.
For example, now that the Apple class extends the position class, we could store the value of “apple” into a variable of type “Position”, or even create a new Apple to be stored into one, as below:<br>
{% highlight java %}
Position test = new Apple(50,100);
{% endhighlight %}

Importantly, whilst the position variable does now contain an Apple object, when we access the variable test, we can’t access anything that isn’t defined in the Position class, because the system doesn’t know ahead of time that the value inside of it is technically an Apple, it just knows that it’s a position.
Because we could technically now store Apples and SnakeSegments in Position variables, we’re able to make use of something called “polymorphism” which roughly means “many types”.


<li>**Delete the above line of code if you added it to your project.**</li>


<h3>Task</h3>
<blockquote>Create a new class called “SnakeHead” in a new tab, and make this extend SnakeSegment. You will also need to give it a constructor that passes along the starting x and y positions.</blockquote>


Back in the Snake class, in the constructor, before looping through and adding the first 3 SnakeSegments, add a new SnakeHead object to the segments list, using the line of code below:<br>
{% highlight java %}
segments.add( new SnakeHead( startX, startY ) );
{% endhighlight %}

Playing the game should now look almost exactly the same. 

The reason we’re able to do this is because again, we’re storing an object of a class that extends the class type of the variable that we’re using to store it. So, because the segments list can contain SnakeSegments, and each SnakeHead object extends SnakeSegment, the ArrayList can store it!

Follow along with the video below if you get stuck, or need further explanation!

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/Polymorphism.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>


<br>
<h2 id="overriding_functionality">Overriding Functionality</h2>
So far, the SnakeHead class just makes use of the variables and functionality that was already inside the SnakeSegment class. We can add more functionality, but what if we want the SnakeHead to draw differently? The SnakeSegment class already has a Draw method, but we can write out new functionality to be used instead of this, by overriding that method.

Copy and paste the code below into the SnakeHead class:<br>
{% highlight java %}
void Draw(){
    fill(0,200,0);
    rect( x, y, size, size );
}
{% endhighlight %}


If we look back at the Draw method in the SnakeSegment class, we can see that the code we’ve just added is exactly the same, other than the values being passed into the fill command, which control the colour.

Because the two methods share the same name, when we call Draw on each element of the segments list in the Snake class’s Draw method, the first element (the one we created as a SnakeHead) will instead use the Draw method in its own class, rather than the one it is inheriting from, overriding the base functionality.

If you run the code now, you should see that the snake’s head is a different shade of green!
Feel free to change the colour as you wish by changing the values in the fill command as before!

Whilst we’ve overridden the method to change the colour, overridden methods and functions can be as complicated as you need them to be, which can make them very useful. You could for example have a game with multiple types of enemy, that all inherit from a base enemy class. This would mean you could store them all in the same list, but each one could override an Attack method with their own form of attacking!

Make sure to follow along with the video below if you’re stuck! 

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/OverridingFunctionality.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2 id="snake_video">Snake Game: Part 10</h2>
In this video we’ll be re-covering the content from this chapter, all the work is done!
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakePart10.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
We're now done with the Snake game! There are more things we could change, so feel free to be creative with your game. Change the colours, add more apples, add more players, add a score indicator, anything you'd like! And make sure to look back through the additional pages you might have missed throughout the course below!

If you're unsure where to get started adding new features, or how to get back on track when there's errors in your code, make sure to continue on to chapters 11 and 12!


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Abstract_Classes">How do I stop myself from creating instances of a parent class?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./implementing_a_feature">Chapter 11 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}