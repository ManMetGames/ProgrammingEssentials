---
layout: default
---

<h1>Chapter 9: Functions</h1>
<p style="font-size:20px">
In this chapter, we'll be covering how to return information from a method to allow us to reuse complex calculations.
<br>
For a quick reference, <a href="../QuickReference/functions">click here</a>.
<br></p>

We’re close to the Snake game being complete, but we need to two more key things: A way to win, and a way to respawn the apple in positions that the snake isn’t in. 

For both of these, we need to be able to test if a position contains any part of the snake. If we can test all possible spaces and see that there’s no free spaces left, then the player has won. And if we can test to see which spaces are free, we can select one at random, and place the apple there, instead of placing it anywhere!

These both rely on information that we’ll need to calculate in the same way, but they’re used for very different purposes. We could calculate whether the snake is in each position both times separately, but we’d be repeating code, which is never the answer!

<p style="font-size:20px"><i>There must be a better way!</i></p>

To test whether a position has a snake segment in it, we could make use of a method that takes in the position we’d like to check, and returns true or false, based on whether there is or isn’t any part of its body in that position. When returning a value from a method, we call it a “function”.

<h2 id="creating_a_function">Creating a Function</h2>
Functions are simply methods that have a return type that isn’t void, and therefore return a value of the appropriate type back to where they’ve been called from.

To create a function, we make use of the same approach we used to create a normal method, but the type of the method can be a normal data type, or even a class type!

To actually return the value, we then need to include the “return” keyword at the end of the code to be run, followed by the value we’re passing back, which will exit the method immediately with the value.

As an example, open a new project, and copy and paste in the code below:<br>
{% highlight java %}
void setup(){
  println(SquareOf(3));
}

int SquareOf(int number){
  int answer = number * number;
  return answer;
}
{% endhighlight %}

<br>
In the above example, we’re using the in-built setup method, to call the print method, which prints out the value returned by a custom function, called SquareOf. The SquareOf function takes in a starting number as the information passed in to the round brackets, creates a local variable called answer (into which it assigns the number multiplied by itself, squaring it!), and then returns the value of this variable.

In this case, the “return” keyword is followed by the “answer” variable, which importantly is the same type as the return type for the function itself.

When using the function, we just do a normal method call, using this as if it were a value of the type that will be returned, which in this case again is int.

Running the code in the example should output the number 9 into the console, as we’ve passed the number 3 to the SquareOf function, which will square it, returning 9, to be printed out using println.

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/Functions.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>


<h2 id="putting_it_into_practice">Putting it into Practice</h2>
Back in the Snake project, we’re going to write a function that returns true or false, whether there is a segment of the snake that is in a specific position, which we can then make use of later!

First of all, let’s fill out the method declaration formula to declare the function. As before this is:
<blockquote style="font-size:20px">
TYPE NAME(){<br>
//CODE<br>
}<br>
</blockquote><br>
We want to make a function called HasSegmentAt, of type boolean, so we can write:<br>
{% highlight java %}
boolean HasSegmentAt(){
//code
}
{% endhighlight %}

<br>
We want to pass in information about the position we’re testing, so we should include some x and y parameters as below:<br>
{% highlight java %}
boolean HasSegmentAt( int x, int y ){
{% endhighlight %}

<br>
The code as it stands will be giving you errors, because the function doesn’t return a value. To fix this, let’s add in a line returning “false”, which can be our fallback for if we never find a place that does overlap with the x and y that gets passed in.

So far, the function should look like this:<br>
{% highlight java %}
boolean HasSegmentAt( int x, int y ){
return false;
}
{% endhighlight %}

<br>
We can now make use of the function, so that when we add more code to it, we can see when it’s working correctly.

Add the following line of code into your Snake’s Move method:<br>
{% highlight java %}
println( HasSegmentAt( 0, 0 ) );
{% endhighlight %}

We should now be able to move the snake through the top left of the screen, and see the value printed out turn true (once we’ve completed the code inside the function!). As we’re currently returning false no matter where the snake is, we should see “false” printed repeatedly to the console.

<h3>Task</h3>
<blockquote>Ahead of the line of code where we return false in the HasSegmentAt function, loop through each SnakeSegment, testing if its x is equal to the passed in x variable, AND testing if its y is equal to the passed in y variable. If both of these are true, return “true” from inside the loop, and the function will stop where it is, and jump immediately back to where it gets called from!</blockquote>

See if you can write this yourself, and follow along with the video below to make sure you’ve got it!

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/WritingASimpleFunction.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

You should now be able to move the snake through the top left corner of the canvas, during which the console should print out “true”.

Once you’re happy that this works, remove the line of code printing out the value of HasSegmentAt(0,0).

<h2 id="tying_it_all_together">Tying It All Together</h2>
This section ties together a lot of the content we’ve made use of over the course so far, so make sure to give it a go, looking back on the previous chapters as required.

We’re going to create a new class to store position data, and write a function that returns all of the spaces that are empty. This can then be used when we’re testing to see if there’s no spaces left (to check if we’ve won!) and in the RespawnApple method to select a random empty space to respawn the apple at.

When breaking this problem down, we can imagine that we need to:
<ul>
    <li>Create a list to store free positions</li>
    <li>Loop through every position the snake could be in.</li>
    <li>Add the position to the list if the snake does not have a segment there</li>
    <li>Return the free position list</li>
</ul>

<h3>Task</h3>
<blockquote>Follow along with the steps below, looking back over this chapter and previous chapters to apply the content we’ve covered so far!
<ol>
<li>Create a new class called “Position”</li>
<li>Give the position class an x and y variable, and a constructor that sets their values</li>
<li>Create a function in the main tab called GetFreePositions, with a return type of ArrayList&lt;Position>.</li>
<li>Inside the GetFreePositions function, create a new ArrayList&lt;Position> object called freePositions.</li>
<li>Return freePositions at the end of the function, giving yourself space to write some code to populate the list ahead of this.</li>
<li>Create an int variable at the top of the main tab called gridWidth, and set this to 25.</li>
<li>Create an int variable at the top of the main tab called gridHeight, and set this to 15.</li>
<li>Inside the GetFreePositions function, where you left space, write a for loop that loops from 0 to less than the value of gridWidth, call the counter variable “x”.</li>
<li>Inside the for loop, write another for loop, that loops from 0 to less than the value of gridHeight, call the counter variable “y”.</li>
<li>Inside the second for loop, we’re now at the point where we can test if each space is in free. Create a new Position object called “space”, passing in x*size, y*size as the position.</li>
<li>Write an if statement to test if the snake DOES NOT have a segment at the position of space.x, space.y.</li>
<li>Inside the curly brackets of the if statement, add space to the freePositions list using the add method.</li>
</ol>
</blockquote>

Your code should now appropriately loop through all of the possible grid locations that the snake could be at, and adds only those that the snake isn’t covering to the freePositions list, which then gets returned.

If you’re really stuck, or think you’re done, follow along with the video below!

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/WritingAComplexFunction.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<h2 id="using_function_values">Using Function Values</h2>
We can now make use of the GetFreePositions function when respawning the apple, and when checking if the game has been won.

First, we need to make sure that the gridWidth and gridHeight variables are correct, so add the following code at the bottom of the main setup method:
{% highlight java %}
gridWidth = width/size;
gridHeight = height/size;
{% endhighlight %}
<br>
You may recognise this from the RespawnApple method, which we're now going to adapt!

To respawn the apple in a free position, we need to store the positions returned by the GetFreePositions function, then choose a random one, and place the apple appropriately.

Inside the RespawnApple method, paste the following code, replacing the code that was there before:<br>
{% highlight java %}
ArrayList<Position> freePositions = GetFreePositions();
    if (freePositions.size()>0) {
     int elementNumber = (int)random(0, freePositions.size());
      Position selectedPosition = freePositions.get(elementNumber);
      apple = new Apple(selectedPosition.x, selectedPosition.y);
    }
{% endhighlight %}

<br>
We should now be storing the result of the GetFreePositions function call directly into a new ArrayList of positions called “freePositions”. This is because even with complex return types, such as an ArrayList of Positions, we’re still just using the function call as a value, so assigning the value to a variable as normal is the same as it always was.

We then test if the size of the ArrayList is greater than 0, so we know that there are any free positions.

We can then store a random number between 0 and the size of the array in an int variable called “elementNumber”, and use this number in the get method on the ArrayList, to get the element at that point in the array. This position is stored in a new Position variable called selectedPosition, which is then used when creating a new Apple object to be stored in the apple variable.

Run your code, and you should see that the apple always respawns in a position that is freely available (it may take a while to test this!).

Because there's now going to be multiple ways for the game to end (winning or losing), we can bundle up the code that respawned the apple and recreated the snake into a method in the main tab, called ResetGame.

Finally, after the if statement testing whether the snake has crashed (in the main tab’s draw method), paste the following code:<br>
{% highlight java %}
      else if (GetFreePositions().size()==0) {
        //win
        ResetGame();
      }
{% endhighlight %}

<br>
In this example, we’re continuing the if, into an else if, which tests if there are no free positions left, by checking the size of the ArrayList returned by the GetFreePositions function, just as if it were any other ArrayList. If that is the case, we reset the game using the ResetGame method we just created.
If you’re unsure how we arrived at this code, make sure to watch along with the video below!


<br>
<h2 id="snake_video">Snake Game: Part 9</h2>
In this video, we'll be going through the previous steps, adding a game win condition, and respawning the apple in a free position.
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakePart9.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
In this chapter, we covered the use of methods that return a value to repeat complex calculations without repeating code.


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Switch_Statements">To run different code when a variable is set to different values do I have to use a massive set of if/else statements?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./inheritance">Chapter 10 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}