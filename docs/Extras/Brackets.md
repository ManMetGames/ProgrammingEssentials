---
layout: default
---

<h1>Extras: Brackets</h1>

In this section we'll take a look at all of the types of bracket you might need to use when programming, and general guidance on what they're usually used for.

<h2>Round Brackets ( )</h2>

When you need to `pass information` into something, this is when you'll need round brackets (like this!). That means that whenever we're working with methods and functions we need round brackets, so that they can take in information!

As an example, in the following code snippet, we can see that both the method declaration for HelloWorld, and the method call to println make use of round brackets:<br>
{% highlight java %}
void HelloWorld(){
    println("Hello, World!");
}
{% endhighlight %}
<br>
It's important to note that even though the HelloWorld method above doesn't take in any information, it still needs round brackets to tell the system that it doesn't need anything!
<br>
It's also worth mentioning that round brackets can also be used as they are in maths, to calculate part of an equation before continuing, as in the example below!<br>
<blockquote>
int a = (10 + 4) / 7;
</blockquote>

<br>
<h2>Curly Brackets { }</h2>
Curly brackets are used when we’re grouping code together in something called “scope”. This is done for a few reasons, but these are generally:<br>
<ul>
<li>To group code together to run (following an if statement, method declaration, for loop etc.)</li>
<li>Or to group code together in a class declaration</li>
</ul>

Variables created inside curly brackets can't be accessed from outside of them, as they would be "out of scope".

To learn more about scope, watch the video below!

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/scope.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

By convention, everything inside a pair of curly brackets should be indented using the tab key. To do this automatically, in Processing, press Ctrl and T.



<br>
<h2>Square Brackets [ ]</h2>
Square brackets are used to access elements of an array or similar structure, and are also used when setting up arrays.

If we look at an example from the chapter on arrays, we can see both of these uses, square brackets are used to create the array, and also to access its elements:<br>
{% highlight java %}
int[] numbers = new int[3];

numbers[0] = 10;
numbers[1] = 20;
numbers[2] = 30;

println(numbers[1]);
{% endhighlight %}


<br>
<h2>Angle Brackets < ></h2>
Angle brackets are used when declaring classes and methods that make use of “generics”, which means things like an ArrayList don’t need to know exactly what type of data they’ll be storing ahead of time. When using an ArrayList, this means that we use the angle brackets to pass in the type that will get used in the generic class. 

As an example, we can see that the code below is taking in a class type called Fruit:<br>
{% highlight java %}
ArrayList<Fruit> fruitList = new ArrrayList<Fruit>();
{% endhighlight %}<br>
To learn more about generics, <a href="https://www.youtube.com/watch?v=K1iu1kXkVoA" target="_blank">click here</a>!

<br>
<h2>More Help</h2>
<ul>
    <li><h3><a href="https://www.lenovo.com/gb/en/glossary/bracket/" target="_blank">Brackets in computing</a></h3></li>
</ul>