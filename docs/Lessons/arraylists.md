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

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/CreatingAnArrayList.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

We’ll need to change how we initialise and use the elements in this array, so let’s do that!

<br>
<h2  id="adding_to_an_arraylist">Adding to an ArrayList</h2>
In the constructor for the Snake class, we can’t initialise the 0, 1 and 2 elements of the ArrayList, because they don’t exist! Instead, we need to add new segments to the list, instead of assigning them to pre-existing spaces in memory.
To do this, we can make use of a method from the ArrayList class, called “add”. This method takes an object of the appropriate type and adds it to the list.
In our case, the segments list contains SnakeSegment objects, so we can either create a new locally scoped SnakeSegment variable, then add this to the list, or we can create a new SnakeSegment object directly in the Add method.
Change the for loop in the Snake class constructor to match the code below:

{% highlight java %}
for(int i = 0; i < 3; i=i+1){    
      segments.add(new SnakeSegment(startX,startY));
    }
{% endhighlight %}
<br>

We’ve now changed the code so that the loop will run three times, each time adding a new snake segment object to the segments list.

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/AddingToAnArrayList.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>


<br>
<h2  id="accessing_the_size_of_an_arraylist">Accessing the Size of an ArrayList</h2>
In the Snake’s Move method, we were using the length variable that belongs to arrays to loop through from the end of the array, but now that we’re using an ArrayList, we don’t have direct access to this variable. Instead, we can make use of a function called size, which can be used in place of segments.length. Because size is a function, which is a type of method, don’t forget to add in the round brackets required by methods. The first line of the for loop should now look like this:
{% highlight java %}
    for(int i = segments.size()-1; i > 0; i=i-1){
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
    for(int i = segments.size()-1; i > 0; i=i-1){
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

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/AccessingElementsInAnArrayList.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>


<br>
<h2 id="snake_video">Snake Game: Part 8</h2>
To finish off this chapter, let’s make the snake grow by leveraging the power of ArrayLists to make the Snake actually grow! We'll also add some code to make the snake crash into itself, so that we can fail the game by adding a hasCrashed variable!
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakePart8.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<h2>Quick check!</h2>
Before you move on, let's have a quick check that you've got everything so far!
<div class="question1container" data-correct-answer="B">
    <h3>Which of the following is not a method that can be accessed on an ArrayList?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, the add method is used to add new elements to an ArrayList!">
        <label for="option1">add();</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's correct! length is a variable accessible on Arrays, the number of elements in an ArrayList is accessed using the size method!">
        <label for="option2">length();</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's not quite right, the remove method is used to remove elements from an ArrayList!">
        <label for="option3">remove();</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right, the size method is used to get the number of elements in an ArrayList!">
        <label for="option4">size();</label><br><br>
        <button type="button" onclick="checkAnswer('.question1container')">Submit</button><p id="result" class="result"></p>
    </form>
</div>

<div class="question2container" data-correct-answer="D">
    <h3>Which of the following is true about Arrays, but false about ArrayLists?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, both Arrays and ArrayLists can store objects!">
        <label for="option1">They can store objects.</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's not quite right, both Arrays and ArrayLists can be iterated through using an enhanced for loop!">
        <label for="option2">They can be iterated through using an enhanced for loop.</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's not quite right, both Arrays and ArrayLists allow element access using an element number, using square brackets for Arrays, and .get for ArrayLists!">
        <label for="option3">They allow elements to be accessed via an element number.</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's correct! The size of an Array cannot be changed without recreating it completely, whereas ArrayLists allow you to add and remove elements freely!">
        <label for="option4">Their size cannot be increased/decreased freely.</label><br><br>
        <button type="button" onclick="checkAnswer('.question2container')">Submit</button><p id="result" class="result">  </p>
    </form>
</div>

<div class="question3container" data-correct-answer="C">
    <h3>Which of the following lines of code correctly creates an ArrayList of type Ball?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, we need to tell the ArrayList what type of object it will store using angle brackets!">
        <label for="option1">ArrayList ballList = new ArrayList();</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's not quite right, we need to tell the ArrayList what type of object it will store using angle brackets!">
        <label for="option2">ArrayList(Ball) ballList = new ArrayList(Ball);</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's correct! This line of code correctly creates an ArrayList of Ball objects!">
        <label for="option3">ArrayList&lt;Ball> ballList = new ArrayList&lt;Ball>();</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right, the variable initialisation is using the format used to create Arrays!">
        <label for="option4">ArrayList&lt;Ball> ballList = new Ball[3];</label><br><br>
        <button type="button" onclick="checkAnswer('.question3container')">Submit</button><p id="result" class="result">  </p>
    </form>
</div>
<br>

<br>
<h2>Summary</h2>
This chapter covers the use of ArrayLists. Make sure to go back over the chapter if you're unsure at all on how to implement any of the content we've covered.


<h2>Extension Task</h2>
You don't need to complete this to move on, but feel free to be get creative!
<blockquote>
Follow along with <a href="https://www.youtube.com/watch?v=vdgiqMkFygc&list=PLRqwX-V7Uu6Z9hI4mSgx2FlE5w8zvjmEy" target="_blank">The Nature of Code Parts 4.1 to 4.4</a> to add a particle system to your game!<br>
This could follow the snake around, or you could spawn particles whenever an apple gets eaten!<br>
Try making the particle system in a new processing sketch, then move the code across when you've got things working!
</blockquote>

<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="https://www.youtube.com/watch?v=IsdZKG9wyBc" target="_blank">How do I remove elements from an ArrayList?</a></h3></li>
    <li><h3><a href="https://youtu.be/IsdZKG9wyBc?si=0jyd7Vgm6s1t0aDx&t=465" target="_blank">How do I remove elements from an ArrayList whilst looping through them?</a></h3></li>
    <li><h3><a href="../QuickReference/arraylists" target="_blank">How do I check if my ArrayList contains a specific value?</a></h3></li>
    <li><h3><a href="../QuickReference/arraylists" target="_blank">How do I clear all of the elements from my ArrayList?</a></h3></li>
</ul>


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://www.youtube.com/watch?v=HnSJZ4qTcwY" target="_blank">ArrayList overview</a></h3></li>
</ul>
<br>


<p style="font-size: 30px; text-align: right;"><a href="./functions">Chapter 9 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}