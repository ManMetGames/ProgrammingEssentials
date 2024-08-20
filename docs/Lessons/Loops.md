---
layout: default
---

<h1>Chapter 7: Loops</h1>
<p style="font-size:20px">
In this chapter, we'll be covering how to loop over sections of code so that we can repeat instructions.
<br>
For a quick reference, <a href="../QuickReference/loops">click here</a>.
<br>
</p>

<h2>The Problem</h2>
You may have realised that there’s quite a lot of repetition in the code we added in the last chapter, with only minor changes at each step. If we wanted to make our snake ten segments long for example, we’d be duplicating code in the draw and move methods seven more times, which isn’t ideal!


To handle situations like this, we can use loops to make our code much easier to read and write!



<br>
<h2  id="while_loops">While Loops</h2>
To get used to loops, open up a blank project and copy and paste in the code below:

{% highlight java %}
int i = 0;
while( i < 10 ){
  println(i);
  i = i+1;
}
{% endhighlight %}
<br>

When you run the code in the above example, you should see that the numbers from 0 to 9 are printed into the console.
The while loop in the example uses exactly the same format as an if statement, in that it takes in a condition, and runs the code inside its curly brackets when that condition is true. The difference being that a while loop will run the code inside it, repeatedly, until the condition is false.
This can cause issues, so make sure that the logic in your loop always allows for your loop to end eventually!

In the example, the condition x<10 is true until x reaches a value of 10, which it does because on each “iteration” going through the loop, the value inside x is increased by 1.


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/WhileLoops.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

While loops are useful when we don’t know exactly how long we need to repeat something for, which isn’t the case in this example, so what might be a better option?


<br>
<h2  id="for_loops">For Loops</h2>
A for loop is a while loop with some quality-of-life features!
If we look back at the while loop, we can see that there are three key things the loop made use of, plus the code to run itself:
<li>A variable to track what iteration we’re on:</li> 

`int i = 0;`


<li>The condition for which the loop should keep running:</li>

`( i < 10 )`


<li>An increment to make sure x reaches its target value:</li>

`i = i+1;`

<li>and the code we actually want to run:</li>

`println(i);`

A for loop allows us to fold the first three of these into a single line of code, so that we can focus on the code we actually want to run!
In the example below, the while loop has been translated into a for loop, keeping its functionality exactly the same:

{% highlight java %}
for(int i = 0; i < 10; i = i+1){
  println(i);
}
{% endhighlight %}
<br>

The format of for loops can be a little tricky to remember at first, but it’s ultimately just remembering those three core parts of the loop, with a semicolon breaking up each one from the next, and that’s the information we’re passing in to the for loop round brackets.


<h3>Important!</h3>
The section of the for loop used for increasing the i variable is run **_AFTER_** the main block of code inside the curly brackets. This means that if we’re using i in this code, it may be one less than the number you might expect!


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/ForLoops.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2  id="putting_it_into_practice">Putting it into Practice</h2>
Looking back at the Snake project, we can see some lines of code that get repeated with only minor changes. The Snake class constructor for example, repeats lines of code that initialise each element of the array.
Instead of initialising the elements individually, we can do them all together using a for loop. Each line initialising elements in the array is only different in the element number used to access the array, so we can use the variable we’re using the keep count of what loop we’re up to.

<h3>Task</h3>
<blockquote>
In the Snake class constructor, write a for loop following the example above. The loop should run as long as the counter variable (in the example this was 'i') is less than 3 (the size of the snake). The code inside the curly brackets should initialise element 'i' in the array with a new SnakeSegment object as before.

<br>
Once that’s done, delete the old code used to initialise the array elements, and we should be good!
</blockquote>
A small change we can make to our code at this point to make it more expandible, is to change the 3 used in the for loop to a variable that holds the size of the array, so if we change that in the future, we don’t have to edit our code!

Thankfully arrays have a built-in variable called "length" that we can use for this purpose, so replace the 3 in the for loop with "segments.length".

Make sure to follow along in the video below to make sure you’ve got everything right!

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/UsingAForLoop.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2  id="looping_backwards_through_an_array">Looping Backwards Through an Array</h2>
To move the snake using a for loop, we can remove the duplicated code that moves backwards through the second and third elements of the array, and instead write a for loop that sets each segments position to the position of the element one lower in the array.


To move backwards through an array, we just need to set the starting value in the for loop to the number we want to start at, and decrease it each time the loop runs.

<h3>Task</h3>
<blockquote>
<li>Add a for loop at the top of the Snake’s Move method, that initialises its counter variable to segments.length-1 (the final element in the array is always at an index one less than the size of the array!).</li>

<li>The loop should run as long as the counter is GREATER THAN OR EQUAL TO 1 (we don’t want to run this code on the snake’s head which is element 0).</li>

<li>And finally, the counter variable should be set to its previous value minus 1.</li>
</blockquote>

Make sure to follow along with the video below if you’re not sure how to get this working!



<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/LoopingBackwards.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2  id="enhanced_for_loops">Enhanced For Loops</h2>

Finally, we need to update the Draw method in the Snake class to loop over each segment, calling its own Draw method.
We could write another for loop to handle this as we did before. Feel free to give this a go to practice constructing one!


Instead of using counter variables for looping through our array, when we want to loop through every element, we can use an “enhanced for loop”. These types of loops are good in these specific cases, but aren’t useful for looping in places where we need a specific number to be used in the rest of the code (like printing i).


The format of an enhanced for loop is a little different to the standard for loop, so make sure you take some time to understand both!


{% highlight java %}
for(SnakeSegment s : segments){
//code to loop here
}
{% endhighlight %}

This can be separated into four parts, which read as: “`For each SnakeSegment` `that we’ll call "s"` `in` `segments`”, the breakdown of which is shown below:

<h2>IMAGE HERE</h2>

Because we’re referring to each SnakeSegment as "s", we can then write code that makes use of this variable, as if it was each element of the segments array!


Our Draw Method for the snake would therefore include the following code:


{% highlight java %}
for(SnakeSegment s : segments){    
  s.Draw();
}
{% endhighlight %}

In this code, we’re access the position of each SnakeSegment in the segments list, and drawing a rectangle using the segment’s x and y, and the size variable from the main tab, as we did when we weren’t using a for loop.

Watch along with the video below to make sure you understand how to use an enhanced for loop!

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/ForEachLoops.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2 id="snake_video">Snake Game: Part 7</h2>
To see why using loops is useful, we can test everything’s working by changing the initial size of our array to a larger number like 10. Try this out and you should see that the loops handle the additional elements of the array without any problems!
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakePart7.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
This chapter covers the use of three different types of loops. Make sure to go back over the chapter if you're unsure at all on how to implement any of the content we've covered.


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Switch_Statements">To run different code when a variable is set to different values do I have to use a massive set of if/else statements?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./arraylists">Chapter 8 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}