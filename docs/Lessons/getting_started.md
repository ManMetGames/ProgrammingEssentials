---
layout: default
---
<h1>Chapter 1: Getting Started</h1>
<p style="font-size:20px">
In this chapter, we'll be covering how to get started using <a href="https://processing.org/">Processing</a>.
<br>
For a quick reference on the core Processing commands we'll be using, <a href="../QuickReference/processing">click here</a>.
<br>
Or if you're already comfortable using Processing, <a href="#snake_video">click here</a> to skip straight to the video covering the start of the Snake Game project we'll be making over the course of each chapter!</p>

<h2>Processing</h2>
Processing is an integraded development environment (IDE) that allows us to write code in the Java programming language. It includes some custom functionality that means we can draw and animate to a canvas, and some things to make coding a little easier in places.

To get started, you'll need to make sure you have Processing downloaded and running. If you don't already have Processing, follow the steps below, or watch along with the quick setup video!
<ul>
<li>Download the latest version of Processing <a href="https://processing.org/download">here</a></li>
<li>Unzip the file you downloaded, and place the folder somewhere safe!</li>
<li>Look inside the folders for Processing.exe and double click it.</li>
</ul>

<p style="font-size: 30px; text-align: right;">QUICK SETUP VIDEO HERE</p>

<br>
<h2>Using Processing</h2>
Now that you've got Processing downloaded and running, give saving and loading a file a go, and hit play to see an empty project run! Watch the video below if you're unsure how to get started.
<p style="font-size: 30px; text-align: right;">QUICK START VIDEO HERE</p>

<br>
<h2>Writing Code</h2>
We're going to write some simple code to get used to using Processing, and build up the start of a simple game of Snake.
Copy and paste the code below into Processing and run it.

{% highlight java %}
//setup
size(200,300);

//draw background
background(0);
{% endhighlight %}
This should create a canvas a little larger than you had before, with a black background.
<br>
Press the stop button back in Processing and the canvas should disappear.
<br>
The code above makes use of a few things that we'll make a lot of use of.
<blockquote>
//Comments - Using a double forward slash // on a line will allow you to write a comment from that point onwards. Comments won't be run as if they were code, and will mean you can look back at your code later and understand it more easily!
</blockquote>
<br>
<blockquote>
Semi-colons; - Semi-colons tell a line of code that it is complete. There will be times when we don't need them, but we can worry about that later, for now- make sure to end each line of code with a semi-colon.
</blockquote>
<br>
<blockquote>
Methods() - size(200,300) and background(0), are examples of methods. Methods run code that has been written somewhere else.
</blockquote>
<br>

We'll come back to methods in Chapter 3, so don't worry too much about them for now. These methods are also very Processing specific, but it's worthwhile understanding what each one does, and what each number we're putting inside the brackets means.

`size(200,300);` - Runs code to set the size of the canvas. The two numbers inside the brackets are the width and height of the resulting canvas.

<img src="../Images/size_method.png" width="250" height="125">

Change the code, so that the size command uses 640 as the width, and 440 as the height. When you run the program, the canvas should be a fair bit bigger.

`background(0);` - Runs code to fill the canvas with a colour, making a fresh background. The number inside the brackets is the colour of the background, where 0 is black, and 255 is white.

<img src="../Images/size_method.png" width="250" height="125">

Change the code, so that the colour value passed in to the background method is 50. When you run the program, the canvas should be dark grey instead of black.


The official Processing reference goes into much more detail on the methods built into Processing, so make sure to check that out if you're interested. This course will use them sparingly, so don't feel like you have to learn them all.

<h2><a href="../Extras/Brackets">( New Bracket Unlocked! )</a></h2>
<blockquote>
There are a lot of brackets used in programming, so each time we cover a new type, we'll make sure to understand what they actually mean. Our first bracket type is the normal bracket, or "parentheses". When you need to pass information into something, this is when you'll need normal brackets. That's why when we wrote methods for setting the size and colour of the canvas in the previous example, we passed information into those methods, using normal brackets!
To learn more, take a look at the quick reference page on brackets <a href="../Extras/Brackets">here</a>!
</blockquote>









<br>
<h2>Storing Values in Variables</h2>
A variable is a space in the computer's memory that we've given a name to, so we can refer back to it throughout our code. This means we can change the value stored in the variable, and the code won't need updating!

This means we can create a variable to control the size of our rectangles!
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/WhyUseVariables.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>
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
<blockquote style="font-size:20px>TYPE NAME;</blockquote>
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

<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/DeclaringVariablesNamingAndDataTypes.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Initialising A Variable</h2>
When you've declared a variable, you can initialise it, setting its starting value. This is done in the format of:

<blockquote style="font-size:20px>NAME = VALUE;</blockquote>

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

<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/InitialisingAndAssigningToVariables.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

Values for different datatypes are written out slightly differently, which you can learn more about <a href="../Extras/Data_Types">here</a>!

<br>
<h2>Bringing It All Together</h2>
Declaring and initialising a variable can also be written all in one go, with the format:
<blockquote style="font-size:20px>TYPE NAME = VALUE;</blockquote>
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

<h3>Quick Task</h3>
In Processing, create an integer variable called x, and set it to 5. Divide x by 10, then print out the result.
<ul>
<li>What is printed out?</li>
<li>Does it do what you expect?</li>
</ul>

Make sure to watch the video below for an explanation on changing variable values , and a solution to the task!
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/InitialisingAndAssigningToVariables.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>


<br>
<h2>Quick check!</h2>
Before you move on to the next chapter, let's have a quick check that you've got it so far!
<div class="question1container" data-correct-answer="B">
    <h3>Which is the correct line of code to declare and initialise a variable holding a value of 200?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, this line of code doesn't declare the variable!">
        <label for="option1">snakeX = 200;</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's correct, this line of code declares and initialises the variable correctly!">
        <label for="option2">int snakeX = 200;</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's not quite right, the variable name can't include a space!">
        <label for="option3">int snake x = 200;</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right, we're missing a semi-colon to complete the line!">
        <label for="option4">int snakeX = 200</label><br><br>
        <button type="button" onclick="checkAnswer('.question1container')">Submit</button><p id="result" class="result"></p>
    </form>
</div>
<div class="question2container" data-correct-answer="D">
    <h3>We have already declared an integer variable called snakeY. Which of these lines of code would <b>not</b> cause an error?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, the variable name isn't spelled correctly, variables names are case-sensitive!">
        <label for="option1">snakey = 50;</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's not quite right, we're missing a semi-colon to complete the line!">
        <label for="option2">snakeY = 10</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's not quite right, we can't re-declare the variable with 'int' if it already exists!">
        <label for="option3">int snakeY = 50;</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's correct, we don't need to declare the variable as it already exists, and the value is assigned correctly!">
        <label for="option4">snakeY = -10;</label><br><br>
        <button type="button" onclick="checkAnswer('.question2container')">Submit</button><p id="result" class="result">  </p>
    </form>
</div>

<div class="question3container" data-correct-answer="C">
    <h3>The integer variable "appleX" is initialised with a value of 50. Which line of code would add 10 to appleX?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, we don't need to re-declare the variable with 'int'!">
        <label for="option1">int appleX = appleX + 10;</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's not quite right, if the value of appleX is changed before this line of code, setting it directly to 60 might not be the same as adding 10!">
        <label for="option2">appleX = 60;</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's correct! To make sure that 10 is added no matter the initial value of the variable, it is increased by adding 10 to its previous value!">
        <label for="option3">appleX = appleX + 10;</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right, whilst this would calculate the value of appleX + 10, it wouldn't do anything with that value, such as assigning it back to appleX!">
        <label for="option4">appleX + 10;</label><br><br>
        <button type="button" onclick="checkAnswer('.question3container')">Submit</button><p id="result" class="result">  </p>
    </form>
</div>

<br>
<h2 id="snake_video">Snake Game: Part 2</h2>
Let's add some variables to the Snake project!
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakeChapter2.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

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

<p style="font-size: 30px; text-align: right;"><a href="./variables">Chapter 2 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}