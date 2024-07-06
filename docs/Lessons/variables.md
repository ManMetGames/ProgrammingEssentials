---
layout: default
---

<h1>Chapter 2: Variables</h1>

In this chapter, we'll be covering how to create and use variables. For a quick reference, <a href="../QuickReference/variables_and_data_types">click here</a>.

<p style="font-size:20px">If you're already comfortable using variables <a href="#snake_video">click here</a> to skip straight to the video covering the next steps with the Snake Game!</p>



<h2>The Problem</h2>
Looking back at the code from Chapter 1, we can see that there is a lot of repetition of the number 30, which we used as the size of the rectangles.

{% highlight java %}
fill(0,255,0);
rect(200,200,30,30);

fill(255,0,0);
rect(400, 200, 30, 30);
{% endhighlight %}

This means that if we wanted to change the size of the rectangles, we'd have to change the code in four different places.

<p style="font-size:20px"><i>There must be a better way!</i></p>

<br>
<h2>Storing Values in Variables</h2>
A variable is a space in the computer's memory that we've given a name to, so we can refer back to it throughout our code. This means we can change the value stored in the variable, and the code won't need updating!

This means we can create a variable to control the size of our rectangles!

To use our variable, we first need to `declare` and `initialise` it.

<br>
<h2>Declaring A Variable</h2>
Variables can hold numbers, letters, words, and much more, so when we create a variable, we have to tell the system what type of variable we'd like (what shape the space in memory is!).

The main two `data types` that we'll be working with for now are `int` and `boolean`.
<ul>
<li><b>int</b> variables can hold whole numbers (integers), like 7, 413, 0 or -22.</li>
<li><b>boolean</b> variables can `true` or `false` values.</li>
</ul>
To tell the system what type we want to use, we `declare` the variable, using the format of:
<p style="font-size:20px">TYPE NAME;</p>
So to create an int variable, we type `int`, followed by the name we'd like give it, which in this case is "size".
{% highlight java %}
int size;
//Creates an integer variable called "size"
{% endhighlight %}

<br>
<h2>Variable Names</h2>
Variable names should be descriptive, but to the point. They also can't start with numbers, or contain spaces or punctuation. Because of this, for any variables we name with multiple words, we'll start each new word with a capital letter. An example of creating a variable for our other common type in this format is given below:
{% highlight java %}
boolean trueOrFalse;
//Creates a boolean variable called "trueOrFalse"
{% endhighlight %}
Variable names are also unique and case-sensitive, so when making a new variable, make sure it doesn't have the same name as one you've already made, and when referencing a variable you've already made, make sure it has any capital letters in the same places!

<br>
<h2>Initialising A Variable</h2>
When you've declared a variable, you can initialise it, setting its starting value. This is done in the format of:

<p style="font-size:20px">NAME = VALUE;</p>

So to set our size value to 30, we can type the line:
{% highlight java %}
size = 30;
//Sets the value of the size variable to 30
{% endhighlight %}

We can use this same format to change the value of any variable, so if we wanted to change the value of a boolean, we would just type:
{% highlight java %}
trueOrFalse = true;
//sets the value of the "trueOrFalse" boolean variable to true
{% endhighlight %}
Values for different datatypes are written out slightly differently, which you can learn more about <a href="../Extras/Data_Types">here</a>!

<br>
<h2>Bringing It All Together</h2>
Declaring and initialising a variable can also be written all in one go, with the format:
<p style="font-size:20px">TYPE NAME = VALUE;</p>
So we can update our code making the size variable, to turn it into one line:
{% highlight java %}
int size = 30;
//Creates the an integer variable called "size" and sets it immediately to 30

size(640,440);
background(50);

fill(0,255,0);
rect(200, 200, 30, 30);

fill(255,0,0);
rect(400, 200, 30, 30);

{% endhighlight %}

And with that we have our space in memory, called "size", containing the number 30!

<img src="../Images/size_variable.png" width="100" height="125">

We can now use `size` in place of the 30s we were using for the size of our rectangles in the code from Chapter 1. If we decide that our rectangles should be 40 pixels wide, we can just change the line of code to set size to 40 instead.
After that's done, your code should look like this!
{% highlight java %}
int size = 30;

size(640,440);
background(50);

fill(0,255,0);
rect(200,200,size,size);

fill(255,0,0);
rect(400, 200, size, size);

{% endhighlight %}

<br>
<h2>Changing Variable Values</h2>
We've seen that we can set a variable using the `NAME = VALUE;` pattern, but we don't have to just pass in fixed numbers.
It's often useful to increase or decrease a value, which we can do using the same pattern.

If we do a calculation to figure out the `value`, it will be calculated before it is assigned to the variable, so if we wanted to increase our size variable by 5, after drawing one of the rectangles, we could use this line of code:
{% highlight java %}
size = size+5;
//Takes the value from size, adds 5,
//then assigns the result back into the size variable
{% endhighlight %}

The same can be done for decreasing values, multiplying or dividing.
{% highlight java %}
size = size-5; 
//Takes the value from size, subtracts 5,
//then assigns the result back into the size variable

size = size*5; 
//Takes the value from size, multiplies it by 5,
//then assigns the result back into the size variable

size = size/5; 
//Takes the value from size, divides it by 5,
//then assigns the result back into the size variable
{% endhighlight %}

<br>
<h2>Quick Task</h2>
In Processing, create an integer variable called x, and set it to 5. Divide x by 10, then print out the result.
<ul>
<li>What is printed out?</li>
<li>Does it do what you expect?</li>
</ul>

Make sure to watch the video below for an explanation on changing variable values , and a solution to the task!
<video width="320" height="240" controls>
  <source src="../Videos/InitialisingAndAssigningToVariables.mp4" type="video/mp4">
  Your browser does not support the video playback.
</video>


<br>
<h2>Quick check!</h2>
Before you move on to the next chapter, let's have a quick check that you've got it so far!
<div class="question1container" data-correct-answer="B">
    <h3>Which is the correct line of code to declare and initialise a variable holding a value of 200?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A">
        <label for="option1">snakeX = 200;</label><br>
        <input type="radio" id="option2" name="answer" value="B">
        <label for="option2">int snakeX = 200;</label><br>
        <input type="radio" id="option3" name="answer" value="C">
        <label for="option3">int snake x = 200;</label><br>
        <input type="radio" id="option4" name="answer" value="D">
        <label for="option4">int snakeX = 200</label><br><br>
        <button type="button" onclick="checkAnswer('.question1container')">Submit</button><p id="result" class="result"></p>
    </form>
    
</div>
<div class="question2container" data-correct-answer="D">
    <h3>We have already declared an integer variable called snakeY. Which of these lines of code would <b>not</b> cause an error?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A">
        <label for="option1">snakey = 50;</label><br>
        <input type="radio" id="option2" name="answer" value="B">
        <label for="option2">snakeY = 10</label><br>
        <input type="radio" id="option3" name="answer" value="C">
        <label for="option3">int snakeY = 50;</label><br>
        <input type="radio" id="option4" name="answer" value="D">
        <label for="option4">snakeY = -10;</label><br><br>
        <button type="button" onclick="checkAnswer('.question2container')">Submit</button><p id="result" class="result"></p>
    </form>
    
</div>

<br>
<h2 id="snake_video">Snake Game: Part 2</h2>
Let's add some variables to the Snake project!


<br>
<h2>Summary</h2>
And that's variables! You should now be ready to move on to Chapter 3! Make sure to refer back to the <a href="../QuickReference/variables_and_data_types">quick reference for this chapter here</a>, and feel free to explore some questions if you'd like to learn more, in the Explore section below!


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Data_Types">How do I store decimal numbers?</a></h3></li>
    <li><h3><a href="../Extras/Data_Types">How do I store letters, words or sentences?</a></h3></li>
    <li><h3><a href="./Classes">How do I store data together?</a></h3></li>
    <li><h3><a href="../Extras/Data_Types">What other data types are there?</a></h3></li>
</ul>


<br>
<br>
<br>

	{% include quiz_script.html %}