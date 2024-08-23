---
layout: default
---

<h1>Extras: Switch Statements and Enums</h1>

In this section we'll look at switch statements and enums, what they are, and how they can be used to make your code more readable and robust. For a quick reference <a href="../QuickReference/switch_statements_and_enums">click here</a>.

<h2>The Problem</h2>
In some situations, we want many different things to happen, based on the value of a variable. For example, let’s say we have code to run different scenes in our game, and a variable that controls which scene we’re currently in.
Copy and paste the code below into a new Processing sketch:<br>
{% highlight java %}
int sceneID = 0;

void setup(){
  if(sceneID == 1){
    println("main menu");
  }
  else if(sceneID == 2){
    println("options");
  }
  else if(sceneID == 3){
    println("game");
  }
  else if(sceneID == 4){
    println("pause menu");
  }
  else if(sceneID == 5){
    println("game over");
  }
  else{
    println("titlescreen");
  }
}
{% endhighlight %}

If you run the code, you should see that “titlescreen” prints out in the console, because the sceneID 0 isn’t tested for in the if statements, so the print method in the else statement at the end is the one that runs. Change the value of sceneID and you should see that you can make each of the other print methods run.

Using six different if statements is hard to read, and not very efficient, in the first example where the sceneID wasn’t any of the ones we test with the code, the program had to run every single test before it got to the else statement.

<p style="font-size:20px"><i>There must be a better way!</i></p>

<h2 id="switch_statements">Switch Statements</h2>
Switch statements allow you to switch the code flow directly to a chunk of code based on a variable value. This is done by passing in the variable you’d like to test, followed by a series of cases, which are the sections of code you’d like to run.


Remove the code you had before, and paste in the code below:<br>
{% highlight java %}
int sceneID = 1;

void setup(){
  
  switch(sceneID){
    case 1:
      println("main menu");
      break;
    case 2:
      println("options");
      break;
  }
}
{% endhighlight %}<br>

When you run this code, you should see “main menu” print out in the console. This example makes use of the “switch” key word, followed by round brackets (as usual to pass in information) that takes in the variable we’d like to test. Inside the curly brackets (the code we’d like to run, we then declare two “cases”, with each being in the format of:
<blockquote style="font-size:20px">
case VALUE:<br>
	//CODE<br>
break;
</blockquote><br>

In the value space, we place the value that the variable in the switch statement needs to be in order to run the code, followed by a colon (NOT a semi-colon). After this we can write any amount of code, although it’s customary to keep this fairly short!
Finally, we use the “break” keyword, followed by a semi-colon, to break out of the switch statement, instead of continuing on to execute the next available lines of code.

In circumstances where we want multiple cases to use the same code, we can remove the break, and the switch statement will keep running code until it finds a break.

To test this, remove the break between the two cases and run the code. If sceneID is 1, the statement should run both cases, as it enters the first case and flows through to the second.

When you’ve tested this, re-add back in the break between the cases!

<h3>Task</h3>
<blockquote>
Add the cases for values of 3, 4 and 5, so that the console prints out “game”, “pause menu” or “game over” as needed.</blockquote>

To handle the job of the else statement, we can then add a special case at the end, called “default”. This is what the switch will default to, if the value of the variable doesn’t match any of the provided case values.

Paste in the following code below the other cases:<br>
{% highlight java %}
    default:
      println("titlescreen");
      break;
{% endhighlight %}<br>

If you change the starting value of sceneID to a number not covered by the cases, you should now see that “titlescreen” is printed to the console!
Follow along with the video below if you’re lost!

<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/SwitchStatements.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>

<br>
<h2 id="another_problem">Another Problem...</h2>
Using a switch statement in the right place is generally more readable, and much more efficient, as the program doesn’t need to test each case.<br>

We do still have another small problem however: When changing between scenes elsewhere in our code, it will be quite difficult to remember which scene is which by ID alone:<br>
“okay I need to load the pause menu… which scene ID was that? 4? 5?”<br>

<p style="font-size:20px"><i>There must be a better way!</i></p>


<h2 id="enums">Enums</h2>
Enumerated types, or “Enums” allow us to specify a new type with a series of predefined values.
This means we can come up with names for each scene, and use them as the values, instead of integer values that we have to remember, such as 2, 3 and 4.<br>

Copy and paste the following code to the top of Processing:
{% highlight java %}
enum Scene{
  MAIN_MENU,
  OPTIONS,
  GAME,
  PAUSE_MENU,
  GAME_OVER,
  TITLESCREEN
}
{% endhighlight %}


This code creates a new type, in a similar way to creating a new class, in the format of:<br>
<blockquote style="font-size:20px">
enum NAME{<br>
    //TYPES<br>
}</blockquote><br>

The types inside are separated by commas, and by convention are written in all capital letters.

This then means that we can change the type of the sceneID to “Scene” (the name of the enum), and use one of the types from the enum as the value, like this:

{% highlight java %}
Scene sceneID = MAIN_MENU;
{% endhighlight %}<br>

As usual, this fits the formula for declaring and assigning to variables, where the value is one of the items defined inside the enum:

<blockquote style="font-size:20px">
TYPE NAME = VALUE;
</blockquote><br>

This then means that we need to change the cases in the switch statement.

<h3>Task</h3>
Change the values in the switch statement to use values from the enum, in the form of:<br>
{% highlight java %}
case MAIN_MENU:
{% endhighlight %}<br>




<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/Enums.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<br>


<br>
<h2>Summary</h2>
In this extra section, we've covered switch statements and enumerated types, looking at how we can use both to make our code more readable. Feel free to refer back to this page, or the quick reference when using either in the future!

<br>
<h2>Project Files</h2>
To download the completed project files for this extras page, <a href="{{ site.baseurl }}/ProcessingFiles/Extras/SwitchStatementsAndEnums.zip" target="_blank">click here</a>. Make sure to extract the files from the zip before trying to open them!
<br>

<h2>Extension Task</h2>
<blockquote>To apply switch statements and enums to the Snake game, feel free to make an enum for UP, DOWN, LEFT and RIGHT, and add a variable called direction to the Snake class, which controls which way the snake is moving. You can then update this instead of changing the direction variables independently when a key is pressed!
</blockquote>

<br>
<h2>More Help</h2>
<ul>
    <li><h3><a href="https://processing.org/reference/switch.html" target="_blank">Processing switch statement documentation</a></h3></li>
    <li><h3><a href="https://www.w3schools.com/java/java_enums.asp" target="_blank">Enum example</a></h3></li>
</ul>
<br>


