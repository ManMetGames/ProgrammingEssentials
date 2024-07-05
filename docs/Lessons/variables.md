---
layout: default
---

<h1>Chapter 2: Variables</h1>

In this chapter, we'll be covering how to create and use variables. For a quick reference, <a href="../QuickReference/variables">click here</a>.

<h3>Feel free to read along, or <a href="#video_explanation">click here</a> to skip straight to the video explanation below!</h3>



<h2>The Problem</h2>
Looking back at the code from Chapter 1, we can see that there is a lot of repetition of the number 30, which we used as the size of the rectangles.

{% highlight java %}
fill(0,255,0);
rect(200,200,30,30);

fill(255,0,0);
rect(400, 200, 30, 30);
{% endhighlight %}

This means that if we wanted to change the size of the rectangles, we'd have to change the code in four different places.

<b><i>There must be a better way!</i></b>

<h2>Storing Values in Variables</h2>
A variable is a space in the computer's memory that we've given a name to, so we can refer back to it throughout our code. This means we can change the value stored in the variable, and the code won't need updating!

This means we can create a variable to control the size of our rectangles!

To use our variable, we first need to `declare` and `initialise` it.

<h2>Declaring A Variable</h2>
Variables can hold numbers, letters, words, and much more, so when we create a variable, we have to tell the system what type of variable we'd like (what shape the space in memory is!).

The main two `data types` that we'll be working with for now are `int` and `boolean`.
<ol>
<li>`int` variables can hold whole numbers (integers), like 7, 413, 0 or -22.</li>
<li>`boolean` variables can `true` or `false` values.</li>
</ol>
To tell the system what type we want to use, we `declare` the variable, using the format of:
<h1>TYPE NAME;</h1>
So to create an int variable, we type `int`, followed by the name we'd like give it, which in this case is "size".
{% highlight java %}
int size; //Creates an integer variable called "size"
{% endhighlight %}

<h2>Variable Names</h2>
Variable names should be descriptive, but to the point. They also can't start with numbers, or contain spaces or punctuation. Because of this, for any variables we name with multiple words, we'll start each new word with a capital letter. An example of creating a variable for our other common type in this format is given below:
{% highlight java %}
boolean trueOrFalse; //Creates a boolean variable called "trueOrFalse"
{% endhighlight %}
Variable names are also case-sensitive, so when referencing a variable you've already made, make sure it has any capital letters in the same places!


<h2>Initialising A Variable</h2>
When you've declared a variable, you can initialise it, setting its starting value. This is done in the format of:

<h1>NAME = VALUE;</h1>

So to set our size value to 30, we can type the line:
{% highlight java %}
size = 30; //Sets the value of the size variable to 30
{% endhighlight %}

We can use this same format to change the value of any variable, so if we wanted to change the value of a boolean, we would just type:
{% highlight java %}
trueOrFalse = true; //sets the value of the "trueOrFalse" boolean variable to true
{% endhighlight %}
Values for different datatypes are written out slightly differently, which you can learn more about <a href="../Extras/DataTypes">here</a>!

<h2>Bringing It All Together</h2>
Declaring and initialising a variable can also be written all in one go, with the format:
<h1>TYPE NAME = VALUE;</h1>
So we can update our code making the size variable, to turn it into one line:
{% highlight java %}
int size = 30; //Creates the an integer variable called "size" and sets it immediately to 30
{% endhighlight %}

And with that we have our space in memory, called "size", containing the number 30!

<img src="../Images/size_variable.png" alt="Girl in a jacket" width="100" height="125">

We can now use `size` in place of the 30s we were using for the size of our rectangles in the code from Chapter 1. If we decide that our rectangles should be 40 pixels wide, we can just change the line of code to set size to 40 instead.

<h2>Changing Variable Values</h2>


If you're unsure how to put this into practise, make sure to follow along with the video explanation below!

<h2 id="video_explanation" >Video Explanation</h2>
Watch the video below to get a short introduction to using variables.
<h1> video here </h1>


<h2>Updating Snake</h2>
Let's add some more variables to the Snake project!
<h1>video here</h1>

<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/DataTypes">How do I store decimal numbers?</a></h3></li>
    <li><h3><a href="../Extras/DataTypes">How do I store letters, words or sentences?</a></h3></li>
    <li><h3><a href="./Classes">How do I store data together?</a></h3></li>
    <li><h3><a href="../Extras/DataTypes">What other data types are there?</a></h3></li>
</ul>

<div class="question-container" data-correct-answer="int snakeX = 200;">
<h2>Quick check!</h2>
Let's have a quick check that you've got it so far!
    <h3>Which is the correct line of code to declare and initialise a variable holding a value of 200?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="snakeX = 200;">
        <label for="option1">London</label><br>
        <input type="radio" id="option2" name="answer" value="int snakeX = 200;">
        <label for="option2">Berlin</label><br>
        <input type="radio" id="option3" name="answer" value="int snake x = 200;">
        <label for="option3">Madrid</label><br>
        <input type="radio" id="option4" name="answer" value="int snakeX = 200">
        <label for="option4">Paris</label><br><br>
        <button type="button" onclick="checkAnswer()">Submit</button>
    </form>
    <p id="result" class="result"></p>
</div>
	{% include quiz_script.html %}