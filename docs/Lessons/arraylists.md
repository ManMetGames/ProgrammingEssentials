---
layout: default
---

<h1>Chapter 8: ArrayLists</h1>
<p style="font-size:20px">
In this chapter, we'll be covering how to use ArrayLists to dynamically change the size.
<br>
For a quick reference, <a href="../QuickReference/arraylists">click here</a>.
<br></p>

The Snake game is definitely coming together! But we’re missing a key element that makes the game what it is: the snake doesn’t grow!


You may remember that arrays are fixed length, as we need to define the size of an array when it is created. We could create a really big array and only use the part of it at the start that makes sense for how long we want the snake to be, but…

<p style="font-size:20px"><i>There must be a better way!</i></p>


We can use another data structure called an ArrayList to dynamically change the size of the snake by adding snake segments without recreating the snake!

<br>
<h2  id="creating_an_arraylist">Creating an ArrayList</h2>
ArrayLists act in largely the same way as arrays, although the way that they’re created is a little different.


An ArrayList is just a `class object` that controls how an array is presented to us, so that it can deal with the hassle of increasing the size dynamically. So instead of creating an ArrayList like an array, we create them much more similarly to a normal class object, as they are ultimately just class objects themselves!


Replace the line where we declare and initialise the SnakeSegments array, with the following line of code (this will cause errors but we’ll fix them!):

{% highlight java %}
ArrayList<SnakeSegment> segments = new ArrayList<SnakeSegment>();
{% endhighlight %}
<br>

We can see in the above example, that we’re again conforming to the object declaration and initialisation formula:

<blockquote style="font-size:20px">TYPE NAME = new TYPE();</blockquote>


The difference here however, is that our type is making use of another type inside it!

{% highlight java %}
ArrayList<SnakeSegment>
{% endhighlight %}
<br>

This is because we’re creating a new ArrayList object, that needs to be told what type of object it’s going to store, and we do that using angle brackets!

<br>
<h2><a href="../Extras/Brackets">< New Bracket Unlocked! ></a></h2>
<blockquote>
The final type of bracket we’ll be making use of is angle brackets! Angle brackets are used when declaring classes and methods that make use of “generics”, which means things like an ArrayList don’t need to know exactly what type of data they’ll be storing ahead of time. When using an ArrayList, this means that we use the angle brackets to pass in the type that will get used in the generic class, so passing in SnakeSegment in the previous example tells the ArrayList that we’d like to store SnakeSegments in the list!
</blockquote>

We’ll need to change how we initialise and use the elements in this array, so let’s do that!

<h2>VIDEO HERE</h2>

<br>
<h2  id="adding_to_an_arraylist">Adding to an ArrayList</h2>
In the constructor for the Snake class, we can’t initialise the 0, 1 and 2 elements of the ArrayList, because they don’t exist! Instead, we need to add new segments to the list, instead of assigning them to pre-existing spaces in memory.
To do this, we can make use of a method from the ArrayList class, called “add”. This method takes an object of the appropriate type and adds it to the list.
In our case, the segments list contains SnakeSegment objects, so we can either create a new locally scoped SnakeSegment variable, then add this to the list, or we can create a new SnakeSegment object directly in the Add method.
Change the for loop in the Snake class constructor to match the code below:

{% highlight java %}
for(int i = 0; i < 3; i++){    
      segments.add(new SnakeSegment(startX,startY));
    }
{% endhighlight %}
<br>

We’ve now changed the code so that the loop will run three times, each time adding a new snake segment object to the segments list.

<h2>VIDEO HERE</h2>


<br>
<h2  id="accessing_the_size_of_an_arraylist">Accessing the Size of an ArrayList</h2>
In the Snake’s Move method, we were using the length variable that belongs to arrays to loop through from the end of the array, but now that we’re using an ArrayList, we don’t have direct access to this variable. Instead, we can make use of a function called size, which can be used in place of segments.length. Because size is a function, which is a type of method, don’t forget to add in the round brackets required by methods. The first line of the for loop should now look like this:
{% highlight java %}
    for(int i = segments.size()-1; i > 0; i--){
{% endhighlight %}
<br>

<br>
<h2  id="accessing_elements_in_an_arraylist">Accessing Elements in an ArrayList</h2>
To fix the errors we have in the rest of the code, we need to change how we’re accessing the elements of the list.


To access elements in an ArrayList, we can’t use the square brackets that we use to access elements of an array, but instead we make use of a function in the ArrayList class, called “get”. The “get” function acts exactly like a normal method, but it returns the object at the appropriate point in the list. To tell it which element we’d like, we pass in the “index” we’d like to access.


In the Move method in the Snake class, for example, we can no longer use segments[i], and we’ll have to swap out all instances of this for segments.get(i) to remove the errors. The same applies for places where we’ve used segments[i-1] or segments[0], which will now need to be segments.get(i-1) and segments.get(0) respectively.

<h3>Task</h3>
<blockquote>Update the code in the Snake’s Move method to reflect these changes. The method should now look like the code below.</blockquote>

{% highlight java %}
void Move(){
    for(int i = segments.size()-1; i > 0; i--){
      segments.get(i).x = segments.get(i-1).x;
      segments.get(i).y = segments.get(i-1).y;
    }
    
    segments.get(0).x += dx;
    segments.get(0).y += dy;
  }
{% endhighlight %}
<br>

<h3>Task</h3>
<blockquote>Fix the final errors by updating the code in your main tab, to also make use of the “get” function, and follow along with the video below if you get stuck!</blockquote>

<h2>VIDEO HERE</h2>


<br>
<h2 id="snake_video">Snake Game: Part 8</h2>
To finish off this chapter, let’s make the snake grow by leveraging the power of ArrayLists to make the Snake actually grow!
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakeChapter8.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
This chapter covers the use of ArrayLists. Make sure to go back over the chapter if you're unsure at all on how to implement any of the content we've covered.


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Switch_Statements">To run different code when a variable is set to different values do I have to use a massive set of if/else statements?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./functions">Chapter 9 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}