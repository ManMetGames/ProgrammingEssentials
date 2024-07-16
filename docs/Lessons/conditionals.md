---
layout: default
---

<h1>Chapter 5: Conditionals</h1>
<p style="font-size:20px">
In this chapter, we'll be covering how to create and use conditions to control the flow of code at runtime.
<br>
For a quick reference, <a href="../QuickReference/conditionals">click here</a>.
<br>

<h2>The Problem</h2>
At this point, you may be wondering when our program is really going to start looking like Snake. In this chapter we’ll be adding controls, the blocky movement, wrapping around the edges and collisions, and turning our animation into a game!

To do this, we need to check whether certain things have happened. 

As an example, lets consider the movement of the snake. The snake currently moves on its own, in a single direction. To change this, we need to check if the player has pressed a key on the keyboard, and change the snake’s movement accordingly.

First of all, we’ll need to add some variables to actually allow us the change the direction that the snake is moving in.

<h3>Task</h3>
<blockquote>
In the Snake class, add two new variables called movementX and movementY. Declare and initialise both, with movementX starting at 1, and movementY starting at 0.

Down in the Snake class’s Move method, we can then base the movement off of these new variables, rather than hardcoded numbers. Instead of just adding 1 to the value of the snake’s x variable, change the code to instead add movementX to the x, and movementY to the y.

If you're unsure how to get going with this, make sure to watch through the video below!
</blockquote>

Running the code should still result in the snake moving right across the canvas, but we can now change the variables to control this movement! 

To test this out, change the starting value of the movementX variable to 0, and the movementY variable to 1.
When we run the program, we should now see that the snake moves down, without us having actually changed the code in the Move method at all!

<H2>VIDEO HERE</H2>


But we want to change these values on the fly! So back in the draw method in the main tab, copy and paste in the code below:

{% highlight java %}
if(false){<br>
  snake.movementX = 0;<br>
  snake.movementY = -1;<br>
}
{% endhighlight %}
<br>


This block of code makes use of a few things we’ve seen before, and a new element called the if statement!
If statements will run code based on whether a condition returns true.

In the example above, we can see that once again we are making use of both round and curly brackets, to take in information, and to bundle together the code that will run when the condition is met. 
Inside the round brackets, the information we pass in needs to be equal to true or false, and in this case, we’re directly passing in false.
When we run the code, we should see that the snake moves as it did before, because the code bundled together isn’t being run, as the condition (the value inside the round brackets) is never equal to true.
Change the “false” to “true” and run the code again.
This time you should see that the snake immediately begins to move up the screen. In this case, the information we passed in was evaluated as true, so the code inside that set the movementY to move the snake upwards was run.
To move this a little closer to controls for our game, change the “true” value to “keyPressed”.
keyPressed is a boolean (true/false) variable that is built-in to Processing, meaning we don’t have to declare or initialise it, just like with the setup and draw methods. This variable will be true when the player has got a key pressed, and false when they haven’t.

if we run the program, we should now see that the snake moves as normal, and then moves up as soon as a key is pressed (you may have to click into the canvas window before keyboard controls work).

This is a good start, but we don’t just want to check if a key has been pressed, we want to test if a specific key has been pressed, and move accordingly.

Change the if statement to reflect the example code below:
if(keyPressed){
	if(key==’w’){
	snake.movementX = 0;
	snake.movementY = -1;
}
}

In the code above, we’ve “nested” a new if statement inside of the previous one, moving the code that ran before inside of it.
Inside the round brackets of our nested if statement, we now have a few move new elements. First of all, we have “key”, which is another built-in variable, that will store the most recently pressed key as a char variable. A char is the data type for variables that are single characters (letters, numbers, etc). When writing out char values, we enclose the character in single quotation marks, just like we have for the ‘w’ after the double equals. The double equals is also new and doesn’t mean assign like the single equals we used when changing variable values did.
•	A double equals (==) is used to test if two things are equal
•	A single equals (=) is used to assign a value to a variable

So, all together, the new if statement is testing if the value of the key variable is equal to the value of  ‘w’, which will be the case when we press the ‘w’ key.

When you run the program now, the snake should only begin moving upwards when you press the ‘w’ key, and other keys should not do this.

We can now add another if statement, inside the keyPressed check, but outside the ‘w’ check, to test if the player is pressing the ‘s’ key to move downwards.
Edit your code to reflect the code below:

if(keyPressed){
	if(key==’w’){
	snake.movementX = 0;
	snake.movementY = -1;
}
if(key==’s’){
	snake.movementX = 0;
	snake.movementY = 1;
}
}

We should now be able to move up and down in the program using the ‘w’ and ‘s’ keys.

Task
Add two more if statements to change the movement variable to 1 and -1, depending on whether the ‘a’ or ‘d’ key is pressed. Remember to also make sure the movementY variable is set to 0, as we don’t want the snake to move diagonally.


Boolean and Logical Operators
When passing information into our if statement, we might want to check if two things are both true at the same time, or if at least one of them is true. We might want to check if something is not true, or if a value is bigger or smaller than another, and not just exactly equal to it. In these cases, we need to make use of “Comparison operators” and “Logical Operators”.

The table below lists common comparison and logical operators that you’ll probably want to refer back to when putting together if statements.

Name	Symbol	Example	Description
Equal	==	If(a==b)	Checks if the value of variables a and b are equal to each other.
Not	!	If(!a)	Checks if the value of variable a is false
Not equal	!=	If(a!=b)	Checks if the value of variables a and b are not equal to each other.
And	&&	If(a&&b)	Checks if the value of variables a and b are both equal to true.
Or	||	If(a||b)	Checks if the value of either variable a or b is true.
Less than	<	If(a<b)	Checks if the value of variable a is less than the value of variable b.
Greater than	>	If(a>b)	Checks if the value of variable a is greater than the value of variable b.
Less than or equal to	<=	If(a<=b)	Checks if the value of variable a is less than or equal to the value of variable b.
Greater than or equal to	>=	If(a>=b)	Checks if the value of variable a is greater than or equal to the value of variable b.

If you want to, you can combine logical and comparison operations, making use of round brackets in the same way that you would in maths to calculate whether part of the calculation is true or false before continuing.
The below code for example would check if only variable a is true, and that b and c are both false.

If( (a&&!(b||c)) 

If you’re unsure how to pull this apart, try to take it step by step, as in the image below:

IMAGE

Building the checks inside if statements can be a little daunting, so if you’re unsure, try to write out in words what you actually want to happen.

Quick Check
(test here on Boolean operations)


It’s worthwhile noting that upper- and lower-case letters are technically different characters, so if you have CapsLock turned on when playing the game, the ‘w’ check will fail, as you’ll actually be putting ‘W’ into the key variable, so to add more resilience, feel free to adapt your code to include the upper-case version of each direction key as below:

If(key==’w’ || key==’W’)

Note in the example above how we can’t just say “if the key is equal to w OR W”. We have to say “if the key is equal to w OR the key is equal to W”. This is because “w OR W” is trying to OR together two characters, which doesn’t make sense, so we first check “if the key is equal to w” which we can then OR with “if the key is equal to W”, as these both equate to true or false values, which can be operated on with OR.

Wrapping Around the Screen
The next thing we need to add is the ability for the snake to wrap around the edges of the screen. To do this, we’re going to use some more built-in variables called width and height, which will hold the width and height of the canvas in pixels.
Without looking at the examples below, see if you can write some more if statements to fulfil the requirements below:

•	If the snake’s x position is greater than or equal to “width”, its x position should be set to 0. 
•	If the snake’s x position is less than 0, its x position should be set to “width-size”.
•	If the snake’s y position is greater than or equal to “height”, its y position should be set to 0.
•	If the snake’s y position is less than 0, its y position should be set to “height-size”.


When dealing with the snake’s position, it makes sense to place this code in the snake’s Move method.
So, in the snake’s move method, we can add the code below:

<br>
<h2 id="snake_video">Snake Game: Part 4</h2>
We've already covered the content in this video, but feel free to watch through what we've covered on methods as a reminder.
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakeChapter4.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
This chapter covers the start of using classes in object-oriented programming. This is a really common place for people to become less confident with their programming skills, but it’s vital for all of the cool stuff you’ll be doing in the coming chapters, so make sure you really understand what we’ve covered before moving on!



<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Parameter_Passing">How do I pass information into a method?</a></h3></li>
    <li><h3><a href="../Extras/Functions">How do return information from a method?</a></h3></li>
</ul>

<p style="font-size: 30px; text-align: right;"><a href="./conditionals_and_functions">Chapter 5 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}