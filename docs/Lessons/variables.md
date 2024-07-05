---
layout: default
---

<h1>Chapter 2: Variables</h1>

In this chapter, we'll be covering how to create and use variables. For a quick reference, <a href="../Essentials/variables">click here</a>.

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

<h2>Declaring and Initialising A Variable</h2>
Variables can hold numbers, letters, words, and much more, so when we create a variable, we have to tell the system what type of variable we'd like (what shape the space in memory is!).

The main three `data types` that we'll be working with are `int`, `float` and `boolean`.
<ol>
<li>`int` variables can hold whole numbers (integers), like 7, 413, 0 or -22.</li>
<li>`float` variables can hold decimal numbers, like 0.021, 314.0, -419.6 or 3.14159.</li>
<li>`boolean` variables can `true` or `false` values.</li>
</ol>
To tell the system what type we want to use, we `declare` the variable, using the format of:
<h1>TYPE NAME;</h1>
So to create an int variable, we type `int`, followed by the name we'd like give it, which in this case is "size".
{% highlight java %}
int size; //Creates an integer variable called "size"
{% endhighlight %}


An example of creating a variable for our other common types is given below:
{% highlight java %}
float decimalNumber; //Creates a float variable called decimalNumber

boolean trueOrFalse; //Creates a boolean variable called trueOrFalse
{% endhighlight %}

When you've declared a variable, you can initialise it, or set its value. This is done in the format of "name = value;", where name is the name of your variable, and value is the value you are telling the variable to hold.
An example of how to set variable values for ints, floats and booleans is given below:

{% highlight java %}
wholeNumber = 3; //sets the value of the wholeNumber variable to 3

decimalNumber = 7.5f; //sets the value of the decimalNumber variable to 7.5

trueOrFalse = true; //sets the value of the trueOrFalse variable to true
{% endhighlight %}

Declaring and initialising a variable can then be done all in one go, with the format: "datatype name = value;"


<img src="../Images/size_variable.png" alt="Girl in a jacket" width="100" height="125">


<h2 id="video_explanation" >Video Explanation</h2>
Watch the video below to get a short introduction to using variables.
<h1> video here </h1>


<h2>Updating Snake</h2>
Let's add some variables to the Snake project!
<h1>video here</h1>

<h2>Explore</h2>
<ul>
    <li><h3><a href="Lessons/variables">What other data types are there?</a></h3></li>
    <li><h3><a href="Lessons/variables">What makes a good variable name?</a></h3></li>
</ul>
