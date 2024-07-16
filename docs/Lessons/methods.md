---
layout: default
---

<h1>Chapter 3: Methods</h1>
<p style="font-size:20px">
In this chapter, we'll be covering how to create and use our own methods.
<br>
For a quick reference, <a href="../QuickReference/methods">click here</a>.
<br>



<h2>The Problem</h2>
At the minute, our snake game doesn’t move. That’s because we can’t repeat our code in a meaningful way. We could copy and paste our code multiple times, updating the snake’s position each time, but because all of the code we write executes immediately, we wouldn’t see it move over time.
<br>

At the moment, we'd have to run our program, stop it, change values, then play it again to see the snake move...
<br>

<p style="font-size:20px"><i>There must be a better way!</i></p>

In chapter 1 we briefly introduced the concept of method calls, where we run a “method” (a bundle of code) somewhere else, by using the name of the method, and round brackets.
<br>

Bundling together code in a method is useful for when we want to repeat multiple lines of code, or when we want to repeat code using different input data.
<br>

As we want our code to repeat over time, we can bundle it up inside a method that Processing will call for us 60 times a second. This will be the “Draw” method.
<br>


<br>
<h2 id="void_draw">void draw</h2>
Just like with variables, to create a method, we need to `declare` it.
<br>
Method declarations are made up in a similar way to variable declarations, in that they are made using the format of:
<blockquote style="font-size:20px">
TYPE NAME(){<br>
    //CODE<br>
}
</blockquote><br>

As well as running code, methods can return data back to where they are called from, which is why we need to include a `type` as well as a `name` for the method. This is commonly called the "return type" of the method, which we'll cover more in Chapter 5.

As the draw method doesn’t need to return data (we’re just using it to run code!) we need to tell the method that it doesn’t have a return type. To do this, we use a return type of `void`, which means "nothing".
<br>


As an example, copy and paste the code below <b>into a new project</b>.
<br>

{% highlight java %}
int x = 0;

void draw(){
  println(x);
  x = x+1;
}
{% endhighlight %}

When you hit play, you should see numbers printing out into the console, increasing from zero.
<br>

<br>
<h2><a href="../Extras/Brackets">{ New Bracket Unlocked! }</a></h2>
<blockquote>
Curly brackets are used when we’re grouping code together in something called “scope”. In the example above, the draw method groups together the two lines of code printing out x and increasing its value, so that we know what code should be run when it is called. Variables created inside curly brackets can't be accessed from outside of them, as they would be "out of scope".

By convention, everything inside a pair of curly brackets should be indented using the tab key. To do this automatically, in Processing, press Ctrl and T.

To learn more, take a look at the quick reference page on brackets <a href="../Extras/Brackets">here</a>!
</blockquote>

<br>
<h2  id="void_setup">void setup</h2>
Up until now, Processing has allowed us to write code outside of methods, but now that we’re using the draw method, we need to put any code that isn’t just variable declarations inside methods. So, anything where we’d like to run once at the start of the program (such as the size command) we need to put inside another method that Processing will call us, called “setup”.
<br>


This also means that whenever we want to assign a value to a variable, past initialisation, it has to be inside a method.
<br>


Add in the code below, in-between the declaration of the x variable, and void draw.
<br>

{% highlight java %}
void setup(){
  size(640,440);
}
{% endhighlight %}

<br>
This should now mean that when you run the program the size of the canvas is 640 pixels wide, and 440 pixels tall, as before.
The setup method will be called automatically by Processing, at the very start of the program.
<br>

<h3>A Few Notes</h3>
<ul>
<li>You may have noticed that we're now starting to write lines of code that don't have semicolons at the end. As a rule, semicolons are only needed at the end of lines that are instructions, as they terminate the line, and tell the computer to run the line of code. As method declarations are just setting up code to be run later, they themselves don't need semicolons, only the lines inside of them that contain instructions to be run later do!</li>

<li>The order of your methods isn't actually important, as the flow of code we discussed in Chapter 1 is actually only important when we're inside a method. By convention however, it's best to have your variable declarations up at the top, followed by your methods.</li>
</ul>
<br>

<br>
<h2 id="calling_your_own_methods">Calling Your Own Methods</h2>
Methods like `draw` and `setup` are special cases, where Processing will actively call them for us, but that doesn’t mean we can’t create methods of our own. We could, for example, bundle up all of the code related to drawing the snake in our snake game, and have only a single line of code in the draw method to handle this.<br>


Back in your snake project, bundle up the setup lines of code into a setup method, and the drawing code into a draw method. Your code should look something like this:

{% highlight java %}
int size = 40;
int snakeX = 200;
int snakeY = 200;
int appleX = 400;
int appleY = 200;

void setup(){
  //setup
  size(640,440);
  noStroke();
}

void draw(){
  //draw background
  background(50);
  
  //draw snake
  fill(0,255,0);
  rect(snakeX,snakeY,size,size);
  
  //draw apple
  fill(255,0,0);
  rect(appleX,appleY,size,size);
}
{% endhighlight %}
Create a new method called DrawSnake that has a return type of void, this can be placed somewhere at the bottom of the code for now. Move the lines of code that draw the snake inside the curly brackets of the DrawSnake method. Where you moved the code from, we’ll need to call the DrawSnake method, which we can do as we did for all of the other method calls:

{% highlight java %}
DrawSnake();
{% endhighlight %}
<br>

Your DrawSnake method should look like this:

{% highlight java %}
void DrawSnake(){
  //draw snake
  fill(0,255,0);
  rect(snakeX,snakeY,size,size);
}
{% endhighlight %}
<br>

As we’ve not defined any information to be passed to the DrawSnake method, we don’t need to put anything inside the round brackets, but we do still need them.
<br>

Repeat the above steps for the apple, creating a DrawApple method, that gets called from the draw method.
<br>

Your draw method should now look like this:<br>

{% highlight java %}
void draw(){
  //draw background
  background(50);
  
  DrawSnake();

  DrawApple();
}
{% endhighlight %}
<br>
Once you’re used to methods, this looks much easier to read and understand.
<br>

When we run our code, there still isn’t any movement, because we’re not updating the position of the snake or apple over time.
<br>

We could just add some code to our DrawSnake method, but we’ll want to make the movement more complicated in the future, as ultimately, moving the snake isn’t drawing the snake (methods should do one thing really well!).
Just before the draw snake comment, add the line of code below:<br>

{% highlight java %}
snakeX = snakeX + 1;
{% endhighlight %}

When you run the code, you should now see that the snake moves across the screen.
<br>
<br>
<h3>Quick Task</h3>
<blockquote>
As we want to make the snake's movement more complicated in the future, we can put the line of code above into a method called MoveSnake. Make the MoveSnake method, and add the method call in before DrawSnake in the draw method.

</blockquote>


<br>
<h2>Quick check!</h2>
Before you move on, let's have a quick check that you've got everything so far!
<div class="question1container" data-correct-answer="B">
    <h3>What are methods used for?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, whilst we did make use of the draw and setup methods that Processing will call for us, they won't run completely on their own, and neither will our own methods!">
        <label for="option1">Grouping lines of code together, so that they run on their own.</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's correct! Methods are used to group lines of code together so that we can run them from elsewhere in our code, meaning we can repeat them, pass in different information, or just make our code more readable!">
        <label for="option2">Grouping lines of code together, to be run from somewhere else.</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's not quite right, whilst we did make use of Processing's draw method to animate the snake, this is specific to both the draw method, and to Processing.">
        <label for="option3">Allowing the code to show animations by running multiple times.</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right, whilst using methods does make it easier to run code multiple times, repeating code isn't their only use.">
        <label for="option4">Allowing our program to run the same lines of code repeatedly.</label><br><br>
        <button type="button" onclick="checkAnswer('.question1container')">Submit</button><p id="result" class="result"></p>
    </form>
</div>

<div class="question2container" data-correct-answer="D">
    <h3>Which format is correct for declaring an empty method?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, this line of code doesn't declare what return type the method will have!">
        <label for="option1">NAME(){}</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's not quite right, methods need round brackets so that they can take in informations!">
        <label for="option2">NAME TYPE{}</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's correct! Method declarations need a return type, name, round brackets to take in information, and curly brackets defining the scope for the code the method should run.">
        <label for="option3">NAME TYPE(){}</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right, whilst method declarations do need round brackets so that they can take in information, the second pair of brackets should be curly brackets, to define the scope of the code that the method will run.">
        <label for="option4">NAME TYPE()()</label><br><br>
        <button type="button" onclick="checkAnswer('.question2container')">Submit</button><p id="result" class="result">  </p>
    </form>
</div>

<div class="question3container" data-correct-answer="C">
    <h3>Which line of code correctly starts to declares a new method, called "PrintVersion", and doesn't return a value?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, the return type in the declaration should match the type name exactly, and in this case, void should be spelled with a lower-case V.">
        <label for="option1">Void PrintVersion(){</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's not quite right, the format of this line of code is good, but this method would need to return an integer variable, which we haven't covered yet!">
        <label for="option2">int PrintVersion(){</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's correct! This line of code would be correct for the first line of a declaration for a method called PrintVersion, which doesn't return a value.">
        <label for="option3">void PrintVersion(){</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right, this line of code is missing the round brackets that methods need (even if they don't take in information!)">
        <label for="option4">void PrintVersion{</label><br><br>
        <button type="button" onclick="checkAnswer('.question3container')">Submit</button><p id="result" class="result">  </p>
    </form>
</div>

<br>
<br>
<h2 id="snake_video">Snake Game: Part 3</h2>
We've already covered the content in this video, but feel free to watch through what we've covered on methods as a reminder.
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakeChapter3.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
Methods are useful for when we want to bundle code together, so that we can run it from elsewhere in our program! You should now be ready to move on to Chapter 4! Make sure to refer back to the <a href="../QuickReference/methods">quick reference for this chapter here</a>, and feel free to explore some questions if you'd like to learn more, in the Explore section below!


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Parameter_Passing">How do I pass information into a method?</a></h3></li>
    <li><h3><a href="../Extras/Functions">How do return information from a method?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./classes">Chapter 4 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}