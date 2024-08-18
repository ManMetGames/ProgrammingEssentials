---
layout: default
---

<h1>Chapter 6: Arrays</h1>
<p style="font-size:20px">This chapter covers how to make use of arrays to store a list of objects.
<br>
For a quick reference, <a href="../QuickReference/arrays">click here</a>.
<br></p>


The next step we need to take in making Snake, is actually turning the snake into… a snake.
Currently, our snake is a single square that moves around the screen, so let’s turn it into multiple segments, and we can worry about adding to it over time later!

For this, we need to do some prep work:
The snake needs to be made of multiple segments, meaning we need to be able to represent a “snake segment” in our code… so let’s make a class for that!
Copy and paste the code below into a new tab called “SnakeSegment”:

{% highlight java %}
class SnakeSegment{
  int x;
  int y;
  
  SnakeSegment(int startX, int startY){
    x = startX;
    y = startY;
  }

  void Draw(){
    fill(0,255,0);
    rect(x*size,y*size,size,size);
  }

}
{% endhighlight %}
<br>

This is a similar class to the Snake and Apple classes, with functionality to set the initial x and y positions in the constructor, and to draw the segment to the canvas (this is just a copy of the Snake’s Draw method!).

We’re going to create multiple SnakeSegment objects to represent the snake’s body.

<h2>VIDEO HERE</h2>

<br>
<h2  id="the_problem">The Problem</h2>
Representing the snake’s body using multiple SnakeSegment objects is fine when we have one or two, but creating a new variable for each SnakeSegment would mean that we need to write code for each one individually, and we need to keep track of more variables than would be sensible (for reference, the Snake game ends when the snake fills the whole canvas, which at the sizes we’ve been using would mean our snake needs to have a maximum of 150 segments!).
We could create individual variables for each segment, but 150 variables for the same basic thing would be silly.
<br>

<p style="font-size:20px"><i>There must be a better way!</i></p>


<br>
<h2  id="arrays">Arrays</h2>
If we think back to variables being boxes in memory, arrays are essentially boxes that are next to each other. So, if we create an array of SnakeSegments, we can access all of the boxes using only one variable for the array itself!
Before we get started with using arrays in the Snake game, let’s try out an example in a new project!

Copy and paste the code below into a new Processing project:

{% highlight java %}
int[] numbers = new int[3];

numbers[0] = 10;
numbers[1] = 20;
numbers[2] = 30;

println(numbers[1]);
{% endhighlight %}
<br>

When you run this code, you should see that the number 20 is printed into the console.

The example above uses a handful of new elements related to arrays.
First of all is square brackets!

<br>
<h2><a href="../Extras/Brackets">[ New Bracket Unlocked! ]</a></h2>
<blockquote>
We’ve reached another new type of bracket! This is the square bracket, which is used to access elements of an array or similar structure, and is also used in setting up arrays.
</blockquote>

When creating and using arrays, we’ll generally need to use square brackets. When declaring an array variable, we use the name of the type of data we’d like to store, followed by an open and close square bracket to signify that this is going to be an array of this type, and finally the name of the array like this:

<blockquote style="font-size:20px">TYPE[ ] NAME;</blockquote><br>

To actually create the array itself, so that we can initialise it, we then need to use the following format:

<blockquote style="font-size:20px">new TYPE[SIZE];</blockquote><br>


Just like creating a new object, we use the “new” keyword, followed by the name of the type. This time however, we’re passing the size of the array into square brackets, rather than round brackets like usual. This is because we’re not actually creating the data yet (whether this is objects or not), we’re only defining how many spaces in memory we’d like next to each other to hold them later.

All together, we declare and initialise the array, just like with other variables:

<blockquote style="font-size:20px">TYPE[ ] NAME = new TYPE[SIZE];</blockquote><br>

In our previous example, the type is “int” (for whole numbers), the name of the array is “numbers”, and the size is 3.

{% highlight java %}
int[] numbers = new int[3];
{% endhighlight %}
<br>

Now that the array has been created, the next three lines in the example initialise values for the three elements in the array, assigning integers to them as normal.
Accessing the elements in the array is done by using the square brackets and the number (or “index”) of the space you would like to access.

Follow along with the video below if you're not following so far!
<h2>VIDEO HERE</h2>

<h3>Important!</h3>
Note how in the example, the three spaces accessed are 0, 1, and 2. Arrays start at 0, so the last element in the array is always at an index of one less than the size of the array. Be careful when accessing arrays, as trying to access a point in the array that doesn’t exist (less than 0, or greater than or equal to its size) will result in an error!
Another important note is that when we create the array, we define its size there and then, so we can’t make it bigger or smaller without recreating the entire array.


<h3>Task</h3>
<blockquote>
Back in the Snake project, go to the Snake class, and create a new array of type SnakeSegment, called segments, by copying in the line of code below with your other variables:</blockquote>

{% highlight java %}
SnakeSegment[] segments = new SnakeSegment[3];
{% endhighlight %}
<br>

Despite SnakeSegment being a class type, creating an array of SnakeSegment objects is formed exactly the same way as creating an array of integers.
Initialising each object in the array will then make use of the normal way of creating class objects.

Copy and paste the following code into the Snake constructor method, replacing the code that set the x and y position of the snake:

{% highlight java %}
segments[0] = new SnakeSegment(startX,startY);
segments[1] = new SnakeSegment(startX,startY);
segments[2] = new SnakeSegment(startX,startY);
{% endhighlight %}
<br>

In this code, we are creating SnakeSegment objects as we usually would, and assigning them to spaces in the array, as we did in the integer example.

Because we’re now handling the position of our snake using the x and y of each segment, we can delete the x and y variables in the Snake class itself (this will cause errors but we’ll fix them!).

<h2>VIDEO HERE</h2>

<br>
<h2  id="accessing_variables_and_methods_on_an_object_in_an_array">Accessing Variables and Methods on an Object in an Array</h2>

To draw and move the snake, we need to access the variables and methods inside each SnakeSegment object stored in the array. To do this, we can use a full stop, just like we would accessing a variable or method on a normal class object, but this time we’re just using the array name and accessor (segments[0], segments[1], etc).
To draw the snake, we now need to draw each individual segment, instead of just drawing a single square. Because each segment can call the SnakeSegment Draw method, we can just tell each one to draw itself.

<h3>Task</h3>
<blockquote>
In the Snake class’s Draw method, call each segment’s Draw method, by accessing each element in the array, and calling the method as we usually would with a .Draw(); This can replace the call to the fill and rect commands that were originally there!
<br>
If you’re not quite sure how to get this working, follow along with the video in the next section!
</blockquote>


<h3>Accessing Variables</h3>
We can also access variables on objects in an array as we usually would with a normal variable.
Instead of assigning values to the old x and y variables in the Snake’s Move method, we instead want to move the head of the snake. To do this, update the code to change the x and y variables for the first element, by assigning new values to segments[0].x and segments[0].y.
<br>

Above the lines of code moving the head of the snake, we’re going to go from the tail, backwards through the array, setting each segment to the next segment along’s position.

<br>
To do this, copy and paste in the following code, above the code that moves the head:

{% highlight java %}
segments[2].x = segments[1].x;
segments[2].y = segments[1].y;
    
segments[1].x = segments[0].x;
segments[1].y = segments[0].y;
{% endhighlight %}
<br>

Finally, we’ll also need to fix the code that wrapped the snake around the screen, so that it now uses snake.segments[0], instead of just snake.

If you’re not quite sure how to get all of this working, make sure to follow along with the video below!

<br>
<h2 id="snake_video">Snake Game: Part 6</h2>
In this video we'll be completing the above tasks to make use of an array in the Snake game!
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakeChapter6.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
By completing this chapter, you should have got in some practice using arrays, ready for looking at how we can loop through them in the next chapter!


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Switch_Statements">To run different code when a variable is set to different values do I have to use a massive set of if/else statements?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./Loops">Chapter 7 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}