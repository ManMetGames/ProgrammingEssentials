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
Copy and paste the code below into Processing and run it by pressing the play button.

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

<img src="../Images/size_method.png" width="250" height="125" style=" text-align: right;">

<h3>Quick Task</h3>
<blockquote>
Change the code, so that the size command uses 640 as the width, and 440 as the height. When you run the program, the canvas should be a fair bit bigger.
</blockquote>

<br>
`background(0);` - Runs code to fill the canvas with a colour, making a fresh background. The number inside the brackets is the colour of the background, where 0 is black, and 255 is white.

<img src="../Images/background_method.png" width="250" height="125">

<h3>Quick Task</h3>
<blockquote>
Change the code, so that the colour value passed in to the background method is 50. When you run the program, the canvas should be dark grey instead of black.
</blockquote>

<br>
The official Processing reference goes into much more detail on the methods built into Processing, so make sure to check that out if you're interested. This course will use them sparingly, so don't feel like you have to learn them all.

<h2><a href="../Extras/Brackets">( New Bracket Unlocked! )</a></h2>
<blockquote>
There are a lot of brackets used in programming, so each time we cover a new type, we'll make sure to understand what they actually mean. Our first bracket type is the round bracket. When you need to `pass information` into something, this is when you'll need round brackets (like this!). That's why when we wrote methods for setting the size and colour of the canvas in the previous example, we passed information into those methods, using round brackets!
To learn more, take a look at the quick reference page on brackets <a href="../Extras/Brackets">here</a>!
</blockquote>

<br>
<h2>Drawing Shapes</h2>
Processing has methods for drawing many different shapes to the canvas, but we'll just be using rectangles to keep things simple.

Paste the code below into your program, after the code you've already got, then hit play.
{% highlight java %}
//draw snake
rect(0,0,60,30);
{% endhighlight %}

As the comment suggests, this is the start of drawing the snake in our snake game. You should see a rectangle drawn in the top left corner of the canvas.
`rect` is another method, which this time takes four numbers as input, and draws a rectangle based on those numbers. The four numbers are the `x` and `y` coordinates of the top-left corner of the rectangle, and the `width` and `height` in pixels.

This means that our rectangle was drawn with its top-left corner at the coordinates 0,0 and was drawn with a width of 60 pixels, and a height of 30 pixels.

<img src="../Images/rect_method.png" width="350" height="125">

<h3>Coordinates</h3>
Based on where the rectangle was drawn, we can understand that an `x` and `y` position of 0,0 must be in the top-left corner of the canvas. When drawing shapes in Processing, it's important to remember that `x` values increase as we move `right` along the canvas, and `y` values increase as we move `down` the canvas, as shown in the image below.

<img src="../Images/coordinateSystem.png" width="250" height="250">

<h3>Quick Task</h3>
<blockquote>
Change the values in the rect command so that the rectangle is drawn at coordinates 200,200 with a width and height of 30 pixels.

Your program should look like this:

<img src="../Images/positioned_rectangle.png" width="320" height="235">

</blockquote>

<br>
<h2>Colour</h2>
It would be nice to colour the rectangle green so that it fits the standard colour scheme of snake. To do this, just before the line of code where we draw the rectangle, on a new line, add the code below:
{% highlight java %}
fill(0,255,0);
{% endhighlight %}

All of your code together, should look like this:
{% highlight java %}
//setup
size(200,300);

//draw background
background(0);

//draw snake
fill(0, 255,0);
rect(200,200,30,30);
{% endhighlight %}

The `fill` method takes three values, these are the `red`, `green` and `blue` values, or `RGB` values.

Just like before, each colour value can be between 0 and 255, representing how strong each colour channel is. This means that when we enter 0 for red, 255 for green, and 0 for blue, we're telling the system that the fill colour should be all green, with no other colour.

Have a play about with the colour picker below to see how to create some different colours, or choose a new colour for your snake.

<label for="colorpicker">Click here to find some good RGB values:</label>
<input type="color" id="colorpicker" value="#00ff00">

<h3>Quick Task</h3>
<blockquote>
Using the colour picker above, have a look at the RGB values for black, white, and some different shades of grey.
<ul>
<li>Why might the background method allow you to only provide one number?</li>
</ul>
</blockquote>

<h3>Quick Task</h3>
<blockquote>
In snake, the player progresses by eating apples, so let's draw one!
Add another rectangle with a width and height of 30 pixels, positioned at 400,200. Colour this red.
</blockquote>

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
<h2 id="snake_video">Snake Game: Part 1</h2>
This video applies all of the content covered in this chapter, going from no code to two coloured rectangles on a canvas.
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakeChapter1.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
And that's us started! You should now be ready to move on to Chapter 2! Make sure to refer back to the <a href="../QuickReference/processing">quick reference for this chapter here</a>, and feel free to explore some questions if you'd like to learn more, in the Explore section below!


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Data_Types">Why do colour values go up to 255?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./variables">Chapter 2 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}