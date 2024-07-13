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

In chapter 1 we briefly introduced the concept of method calls, where we run a “method” (a bundle of code) somewhere else, by using the name of the method, and round brackets.
Bundling together code in a method is useful for when we want to repeat multiple lines of code, or when we want to repeat code using different input data.
As we want our code to repeat over time, we can bundle it up inside a method that Processing will call for us 60 times a second. This will be the “Draw” method.


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

As well as running code, methods can return data back to where they are called from, which is why we need to include a `type` as well as a `name` for the method. 
As the draw method doesn’t need to return data (we’re just using it to run code!) we need to tell the method that it doesn’t have a return type. To do this, we use a return type of `void`, which means "nothing".<br>


As an example, copy and paste the code below <b>into a new project</b>.

{% highlight java %}
int x = 0;

void draw(){
	println(x);
	x = x+1;
}
{% endhighlight %}<br>

When you hit play, you should see numbers printing out into the console, increasing from zero.

<br>
<h2><a href="../Extras/Brackets">{ New Bracket Unlocked! }</a></h2>
<blockquote>
Curly brackets are used when we’re grouping code together in something called “scope”. In the example above, the draw method groups together the two lines of code printing out x and increasing its value, so that we know what code should be run when it is called. Variables created inside curly brackets can't be accessed from outside of them, as they would be "out of scope".
To learn more, take a look at the quick reference page on brackets <a href="../Extras/Brackets">here</a>!
</blockquote>

<br>
<h2  id="void_setup">void setup</h2>
Up until now, Processing has allowed us to write code outside of methods, but now that we’re using the draw method, we need to put any code that isn’t just variable declarations inside methods. So, anything where we’d like to run once at the start of the program (such as the size command) we need to put inside another method that Processing will call us, called “setup”.<br>


This also means that whenever we want to assign a value to a variable, past initialisation, it has to be inside a method.<br>


Add in the code below, in-between the declaration of the x variable, and void draw.<br>

{% highlight java %}
void setup(){
	size(640,440);
}
{% endhighlight %}

<br>
This should now mean that when you run the program the size of the canvas is 640 pixels wide, and 440 pixels tall, as before.
The setup method will be called automatically by Processing, at the very start of the program.


The order of your methods isn't actually important, as the flow of code we discussed in Chapter 1 is actually only important when we're inside a method. By convention however, it's best to have your variable declarations up at the top, followed by your methods.

<br>
<h2 id="calling_your_own_methods">Calling Your Own Methods</h2>
Methods like draw and setup are special cases, where Processing will actively call them for us, but that doesn’t mean we can’t create methods of our own. We could, for example, bundle up all of the code related to drawing the snake in our snake game, and have only a single line of code in the draw method to handle this.<br>


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
Create a new method called DrawSnake that has a return type of void. Now move the lines of code that draw the snake inside the curly brackets of the DrawSnake method. Where you moved the code from, we’ll need to call the DrawSnake method, which we can do as we did for all of the other method calls:

{% highlight java %}
DrawSnake();
{% endhighlight %}
<br>

As we’ve not defined any information to be passed to the DrawSnake method, we don’t need to put anything inside the round brackets, but we do still need them.

Repeat the above steps for the apple, creating a DrawApple method, that gets called from the draw method.

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
Once you’re used to methods, this looks much easier to read and understand.<br>

When we run our code, there still isn’t any movement, because we’re not updating the position of the snake or apple over time.<br>

We could just add some code to our DrawSnake method, but we’ll want to make the movement more complicated in the future, as ultimately, moving the snake isn’t drawing the snake (methods should do one thing really well!).
Just before the draw snake comment, add the line of code below:<br>

{% highlight java %}
snakeX = snakeX + 1;
{% endhighlight %}

When you run the code, you should now see that the snake moves across the screen.

<br>
<h3>Quick Task</h3>
<blockquote>
As we want to make the snake's movement more complicated in the future, we can put the line of code above into a method called MoveSnake. Make the MoveSnake method, and add the method call in before DrawSnake in the draw method.

</blockquote>

<br>
<h2>Summary</h2>
Methods are useful for when we want to bundle code together, so that we can run it from elsewhere in our program! You should now be ready to move on to Chapter 4! Make sure to refer back to the <a href="../QuickReference/methods">quick reference for this chapter here</a>, and feel free to explore some questions if you'd like to learn more, in the Explore section below!


<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Data_Types">How do I store decimal numbers?</a></h3></li>
    <li><h3><a href="../Extras/Data_Types">How do I store letters, words or sentences?</a></h3></li>
    <li><h3><a href="./Classes">How do I store data together?</a></h3></li>
    <li><h3><a href="../Extras/Data_Types">What other data types are there?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./classes">Chapter 4 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}