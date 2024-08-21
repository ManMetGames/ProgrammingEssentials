---
layout: default
---

<h1>Chapter 5: Conditionals</h1>
<p style="font-size:20px">
In this chapter, we'll be covering how to create and use conditions to control the flow of code at runtime.
<br>
For a quick reference, <a href="../QuickReference/conditionals">click here</a>.
<br></p>

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


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/MovementVariables.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>


<br>
<h2  id="if_statements">If Statements</h2>
But we want to change these values on the fly! So back in the draw method in the main tab, copy and paste in the code below:

{% highlight java %}
if(false){
  snake.movementX = 0;
  snake.movementY = -1;
}
{% endhighlight %}
<br>


This block of code makes use of a few things we’ve seen before, and a new element called the `if statement`!
<li>If statements will run code based on whether a condition returns true.</li>

In the example above, we can see that once again we are making use of both round and curly brackets, to take in information, and to bundle together the code that will run when the condition is met. 

Inside the round brackets, the information we pass in needs to be equal to `true` or `false`, and in this case, we’re directly passing in `false`.

When we run the code, we should see that the snake moves as it did before, because the code bundled together isn’t being run, as the condition (the value inside the round brackets) is never equal to true.

<li>Change the “false” to “true” and run the code again.</li>

This time you should see that the snake immediately begins to move up the screen. In this case, the information we passed in was evaluated as `true`, so the code inside the curly brackets setting the movementY to move the snake upwards was run.


To move this a little closer to controls for our game, change the `true` value to `keyPressed`.


keyPressed is a boolean (`true`/`false`) variable that is built-in to Processing, meaning we don’t have to `declare` or `initialise` it, just like with the setup and draw methods. 


<li>Processing controls the value in <b><i>keyPressed</i></b> for us, and will set it to true when the player is pressing any key, and false when they aren’t.</li>

If we run the program, we should now see that the snake moves as normal, and then moves up as soon as a key is pressed (you may have to click into the canvas window before keyboard controls work).


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/IfStatements.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>


<br>
<h2  id="testing_equality">Testing Equality ==</h2>
This is a good start, but we don’t just want to check if a key has been pressed, we want to test if a specific key has been pressed, and move accordingly.

Change the if statement to reflect the example code below:

{% highlight java %}
if(keyPressed){
  if(key=='w'){
    snake.movementX = 0;
    snake.movementY = -1;
  }
}
{% endhighlight %}
<br>

In the code above, we’ve `nested` a new if statement inside the previous one, moving the code that ran before inside of it.


Inside the round brackets of our nested if statement, we now have a few move new elements. First of all, we have `key`, which is another built-in variable, that will store the most recently pressed key as a char variable. 

<blockquote>
<ul>
<li>A char is the data type for variables that are single characters (letters, numbers, punctuation, etc).</li>
</ul>
</blockquote>


When writing out char values, we enclose the character in `single quotation marks`, just like we have for the ‘w’ after the double equals. The double equals is also new and doesn’t mean assign like the single equals we used when changing variable values did.

<blockquote>
<ul>
	<li>A double equals (==) is used to test if two things are equal</li>
	<li>A single equals (=) is used to assign a value to a variable</li>
</ul>
</blockquote>

So, all together, the new if statement is testing if the value of the key variable is equal to the value of  'w', which will be the case when we press the 'w' key.

When you run the program now, the snake should only begin moving upwards when you press the 'w' key, and other keys should not do this.


We can now add another if statement, inside the keyPressed check, but outside the 'w' check, to test if the player is pressing the 's' key to move downwards.


Edit your code to reflect the code below:

{% highlight java %}
if(keyPressed){
  if(key=='w'){
    snake.movementX = 0;
    snake.movementY = -1;
  }
  if(key=='s'){
    snake.movementX = 0; 
    snake.movementY = 1;
  }
}
{% endhighlight %}
<br>

We should now be able to move up and down in the program using the `w` and `s` keys.

<h3>Task</h3>
<blockquote>
Add two more if statements to change the movement variable to 1 and -1, depending on whether the 'a' or 'd' key is pressed. Remember to also make sure the movementY variable is set to 0, as we don’t want the snake to move diagonally.

If you're unsure how to get this working, watch the video below, but make sure to re-cover this chapter to make sure you understand how to use if statements.
</blockquote>


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/TestingEquality.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2  id="comparison_and_logical_operators">Comparison and Logical Operators</h2>
Boolean and Logical Operators
When passing information into our if statement, we might want to check if two things are both true at the same time, or if at least one of them is true. We might want to check if something is not true, or if a value is bigger or smaller than another, and not just exactly equal to it.


In these cases, we need to make use of `Comparison operators` and `Logical Operators`.

The table below lists common comparison and logical operators that you’ll probably want to refer back to when putting together if statements.

<table>
<tbody>
<tr><td>Name</td><td>Symbol</td><td>Example</td><td>Description</td></tr>
<tr><td>Equal</td><td>==</td><td style="white-space: nowrap"> if( a == b ) </td><td>Checks if the value of variables a and b are equal to each other.</td></tr>
<tr><td>Not</td><td>!</td><td style="white-space: nowrap"> if( !a ) </td><td>Checks if the value of variable a is false.</td></tr>
<tr><td>Not Equal</td><td style="white-space: nowrap">!=</td><td> if( a != b ) </td><td>Checks if the value of variables a and b are not equal to each other.</td></tr>
<tr><td>And</td><td>&&</td><td style="white-space: nowrap"> if( a && b ) </td><td>Checks if the value of variables a and b are both equal to true.</td></tr>
<tr><td>Or</td><td>||</td><td style="white-space: nowrap"> if( a || b ) </td><td>Checks if the value of either variable a or b is true.</td></tr>
<tr><td>Less than</td><td style="white-space: nowrap"> < </td><td> if( a < b ) </td><td>Checks if the value of variable a is less than the value of variable b.</td></tr>
<tr><td>Greater than</td><td style="white-space: nowrap"> > </td><td> if( a > b ) </td><td>Checks if the value of variable a is greater than the value of variable b.</td></tr>
<tr><td>Less than or equal to</td><td style="white-space: nowrap"> <= </td><td> if( a <= b ) </td><td>Checks if the value of variable a is less than or equal to the value of variable b.</td></tr>
<tr><td>Greater than or equal to</td><td style="white-space: nowrap"> >= </td><td> if( a >= b ) </td><td>Checks if the value of variable a is greater than or equal to the value of variable b.</td></tr>
</tbody>
</table>

If you want to, you can combine logical and comparison operations, making use of round brackets in the same way that you would in maths to calculate whether part of the calculation is true or false before continuing.


The below code, for example, would check if only variable a is true, and that b and c are both false.

{% highlight java %}
if( (a&&!(b||c))
{% endhighlight %}
<br>


Building the checks inside if statements can be a little daunting, so if you’re unsure, make sure to follow along with the above example in the video below.


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/BooleanOperators.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2  id="putting_it_into_practice">Putting It Into Practice</h2>
Let's actually put some of these comparison and logical operators into practice!


It’s worthwhile noting that upper- and lower-case letters are technically different characters, so if you have CapsLock turned on when playing the game, the ‘w’ check will fail, as you’ll actually be putting ‘W’ into the key variable, so to add more resilience, feel free to adapt your code to include the upper-case version of each direction key as below:

{% highlight java %}
if(key=='w' || key=='W')
{% endhighlight %}
<br>

<h3>Important!</h3>
Note how in the example above how we can’t just say `if ( key is equal to w OR W )`.

We have to say `if ( key is equal to w OR key is equal to W )`. This is because the OR, AND and NOT operators only work with true or false values (because they're logical operators). So we first evaluate whether `key is equal to w`, and then evaluate whether `key is equal to W` is true or false. We can then use the OR, to return true or false overall, if one OR the other is true (OR both!).

Each section needs to make sense as a true/false on its own.


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/LogicalOperators.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2  id="else_and_else_if">Else and Else If</h2>
Sometimes we want to run one set of code if a condition has been met, and another set of code if it hasn't. In these cases, it can be useful to use an "else".

Following an if statement's closing curly bracket, we can add an additional set of code to run in the case that the previous condition wasn't met. To do this, we simply write "else" followed by more curly brackets to define the scope of the else statement.

In a new project, copy and paste the code below:

{% highlight java %}
int x = 1;

if(x < 2){
println("x is less than 2");
}
else{
println("x is greater than 2");
}
{% endhighlight %}
<br>

We can see in the code above that the else statement doesn't need any additional round brackets, because we're not passing in a condition to check, we already know at that point in the code flow whether the previous condition was met or not, and if it wasn't then the code inside the curly brackets gets run.

If you run the code, you should see that "x is less than 2" is printed to the console, because the value of x (1) is less than 2, and the code in the if statement got to run.

<li>Change the code to set the value of x to 3.</li>

When you now run the code, you should see that "x is greater than 2" is printed to the console, because the value of x (now 3) is NOT less than 2, so the code in the if statement never ran, so the code in the else statement ran instead.

<h3>Else If</h3>
You may have realised there's a problem with the code in the example above. If we set the value of x to be exactly 2, then it is still NOT less than 2, so the console print out reads "x is greater than 2", which is incorrect. In this case we want to add another check, in between the first check and the else statement.

Update your code to reflect the changes below:

{% highlight java %}
int x = 1;

if(x < 2){
println("x is less than 2");
}
else if( x == 2){
println("x is exactly 2");
}
else{
println("x is greater than 2");
}
{% endhighlight %}
<br>

In this example, we can now see that we've snuck in another if statement, that flows off of an else, meaning it will only run if the previous statement was unsuccessful.
You can continue this pattern as many times as you'd like, with more `else if` statements in between the opening `if` and closing `else` (but make sure there's only one `else` on its own for each `if`!).

You can also have an `if` and `else if`, without following it with an `else`, it isn't a requirement!


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/ElseAndElseIf.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2  id="modulus_operator">Modulus Operator</h2>
If you've followed along with everything so far, you should be able to move the snake around the canvas, with it wrapping around the edges. This is great, but it's missing the classic blocky movement. We want to update the movement code to make the movements our snake makes bigger, but less frequent.
Bigger movements is easier, so let's do that first!

<h3>Task</h3>
<blockquote>
Each time the snake moves, instead of moving 1 pixel, we want it to move its full size, so in the Snake class, update the code that adds movementX and movementY to x and y, to instead add "movementX * size" to x, and "movementY * size" to y.
</blockquote>

If you run the code now, we should see that the snake moves *very* quickly, as each step its taking every frame is now much bigger.

<h3>Modulus %</h3>
To slow down the movement, we're going to make use of another in-built variable "frameCount", and a new operator called "Modulus", which you can think of as the "remainder operator".

<li>Modulus can be used in the same way as +, -, * or /, as it is a mathematical operator.</li>
<li>To use modulus, we use the % symbol.</li>
<li>Modulus return the remainder of a division.</li>

As an example, if we're working with  whole numbers, and we wanted to divide 11 by 5, we'd get 2, with a remainder of 1. Dividing 11 by 5 would give you the 2, and doing 11 modulus 5 would give you 1, as it returns only the remainder.

We can test this simply in code by just printing the calculation results out directly:

{% highlight java %}
println(11/5);
println(11%5);
{% endhighlight %}
<br>

This can be useful in cases where we want to have something happen periodically, because we can check if a variable that gets updated every frame (frameCount!) is perfectly divisible my a number, and only if it is (when the remainder is 0) do we do the thing we want to happen periodically.

If we want the snake to only move once every 15 frames for example, we can check that the remainder of frameCount modulus 15 is 0, and then run the movement code if this was true.

In code, that would look like this:

{% highlight java %}
if(frameCount % 15 == 0){
	//movement code here
}
{% endhighlight %}
<br>

<h3>Task</h3>
<blockquote>
Copy the above code into the top of the Snake class's Move method, and put the lines of code updating the x and y positions inside the curly brackets of the if statement.
</blockquote>

Running the code should now show the snake moving further, but less often, as we wanted!

Watch the video below if you're not sure if you've got this quite right!


<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/Modulus.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<br>
<h2>Quick check!</h2>
Before you move on, let's have a quick check that you've got everything so far!
<div class="question1container" data-correct-answer="C">
    <h3>Which of the following lines of code correctly tests if a variable called x is greater than or equal to 10?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, this if statement is missing round brackets, remember the condition we're testing is the information we're passing in.">
        <label for="option1">if x >= 10</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="This is technically correct, although the readability of the code would definitely be improved by using the greater than equal to operator, rather than testing if x is not less than 10!">
        <label for="option2">if( !(x < 10) ){</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's correct! This line makes proper use of the appropriate brackets and correctly tests if x is greater tha or equal to 10.">
        <label for="option3">if( x >= 10 ){</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right, the symbols in the greater than or equal to operator are backwards, remember that it's greater than > or equal to =, so its >=.">
        <label for="option4">if( x => 10 ){</label><br><br>
        <button type="button" onclick="checkAnswer('.question1container')">Submit</button><p id="result" class="result"></p>
    </form>
</div>

<div class="question2container" data-correct-answer="B">
    <h3>Which of the following lines of code would test if both variables A and B were false?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's not quite right, whilst testing if B is equal to false is good, we can't test both A and B together like this! This would instead check if A was true and B was false.">
        <label for="option1">if( A && B == false ){</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's correct! We are quite literally checking if A is not true, and if B is not true. We could also have written if(! (A || B) ) to test if A or B were true, and inverted it with the NOT!">
        <label for="option2">if( !A && !B ){</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's not quite right, this would test if A and B are both true, and then inverted this using the NOT. Which would return true in cases where one of A and B are true but not both, which isn't what we want!">
        <label for="option3">if( !( A && B ) ){</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's not quite right! It's definitely possible to write the same condition in multiple ways, but the above answers aren't quite logically the same!">
        <label for="option4">All of the above</label><br><br>
        <button type="button" onclick="checkAnswer('.question2container')">Submit</button><p id="result" class="result">  </p>
    </form>
</div>

<div class="question3container" data-correct-answer="C">
    <h3>Which of the following statements is correct?</h3>
    <form id="quizForm">
        <input type="radio" id="option1" name="answer" value="A" data-feedback="That's correct! Although isn't the only correct answer!">
        <label for="option1">You can follow an if statement with as many else if statements as you'd like</label><br>
        <input type="radio" id="option2" name="answer" value="B" data-feedback="That's correct! Although isn't the only correct answer!">
        <label for="option2">You can only have one else statement following an if statement, without starting a new if statement</label><br>
        <input type="radio" id="option3" name="answer" value="C" data-feedback="That's correct! Although isn't the only correct answer!">
        <label for="option3">An else if statement will not run if the previous condition was met, even if its condition would be true</label><br>
        <input type="radio" id="option4" name="answer" value="D" data-feedback="That's correct! All of the above statements are true of if statements!">
        <label for="option4">All of the above</label><br><br>
        <button type="button" onclick="checkAnswer('.question3container')">Submit</button><p id="result" class="result">  </p>
    </form>
</div>

<br>

<br>
<h2 id="snake_video">Snake Game: Part 5</h2>
To finish up the Snake game for this chapter, we're going to make the apple move when it the snake collides with it, and make the snake wrap around the screen.

<h3>Task</h3>
<blockquote>
To make the snake wrap around the screen, we’re going to make more use of the "width" and "height" built-in variables, which hold the width and height of the canvas in pixels.
See if you can write some more if statements in the Snake class's Move method, after the snake has moved, to fulfil the following requirements:

<br>
<ul>
<li>If the snake’s x position is greater than or equal to “width”:<ul><li> The x position should be set to 0.</li></ul></li>
</ul>

<ul>
<li>If the snake’s x position is less than 0:<ul><li> The x position should be set to “width-size”.</li></ul></li>
</ul>

<ul>
<li>If the snake’s y position is greater than or equal to “height”:<ul><li> The y position should be set to 0.</li></ul></li>
</ul>

<ul>
<li>If the snake’s y position is less than 0:<ul><li> The y position should be set to “height-size”.</li></ul></li>
</ul>

</blockquote>

And finally, before watching the video below, see if you can make the apple respawn if its x and y positions are equal to the snake's x and y positions.

Again, if you're unsure how to get this working, make sure to follow along with the video below!

<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SnakePart5.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>
<h2>Summary</h2>
This chapter covers the use of if statements to test conditions, which is a really vital aspect of all programming, as it allows us to control the flow of our code. Make sure to go back over the chapter if you're unsure at all on how to implement any of the content we've covered.


<h2>Extension Task</h2>
You don't need to complete this to move on, but feel free to be get creative!
<blockquote>
Create a new integer variable called "score", that you increase by 1 whenever the snake eats the apple!<br>
Use the <a href="https://processing.org/reference/text_.html" target="_blank">text</a> command to display this somewhere on the screen!<br>
If the player's score is greater than 10, change the fill of the text to a different colour using the fill command!<br>
Feel free to add more conditions that change the colours further, or change the colour of the snake, or the apple, based on the score!
</blockquote>

<br>
<h2>Explore</h2>
<ul>
    <li><h3><a href="../Extras/Switch_Statements_and_Enums">To run different code when a variable is set to different values do I have to use loads of if/else statements?</a></h3></li>
</ul>


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=GeCVwZW_atz-fZy4&t=7368" target="_blank">Conditional statements</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=mFjp2IhkwFgY2Z1q&t=7830" target="_blank">Else</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=VexMzMIKd2eTuC76&t=8311" target="_blank">Logical operators</a></h3></li>
</ul>
<br>

<p style="font-size: 30px; text-align: right;"><a href="./arrays">Chapter 6 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}