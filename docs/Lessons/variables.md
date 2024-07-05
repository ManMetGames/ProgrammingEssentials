---
layout: default
---

<h1>Chapter 2: Variables</h1>

In this chapter, we'll be covering how to create and use variables. For a quick reference, <a href="../Essentials/variables">click here</a>.

<h3>`Feel free to read along, or skip straight to the video explanation below!`</h3>

<h2>The Problem</h2>
Looking back at the code from Chapter 1, we can see that there is a lot of repetition of the number 30, which we used as the size of the rectangles.

{% highlight java %}
fill(0,255,0);
rect(200,200,30,30);

fill(255,0,0);
rect(400, 200, 30, 30);
{% endhighlight %}

This means that if we wanted to change the size of the rectangles, we'd have to change the code in loads of different places.

<h3><i>There must be a better way!</i></h3>

<h2>Storing Values in Variables</h2>
A variable is a space in the computer's memory that we've given a name to, so we can refer back to it throughout our code. This means we can change the value stored in the variable, and the code won't need updating!

This means we can create a variable to control the size of our rectangles!
<img src="./Images/size_variable.png" alt="Girl in a jacket" width="200" height="250">

To use our variable, we first need to `declare` and `initialise` it.

<h3>Declaring A Variable</h3>
Variables can hold numbers, letters, words, and much more, so when we create a variable, we have to tell the system what type of variable we'd like (what shape the space in memory is!).

The main three `data types` that we'll be working with are `int`, `float` and `boolean`.
<ul>
<li>`int` variables can hold whole numbers (integers), like 7, 413, 0 or -22.</li>
<li>`float` variables can hold decimal numbers, like 0.021, 314.0, -419.6 or 3.14159.</li>
<li>`boolean` variables can `true` or `false` values.</li>
</ul>
To tell the system what type we want to use, we `declare` the variable, using the format of `type name;`.


we need to choose an appropriate data type: `int` holds whole numbers, so we'll use that!




Declaring a variable means creating the space in memory for your data, and giving it a name.
To create this space, we need to decide what type of value the variable should hold, this is its "datatype".

Declaring a variable is done in the format of "datatype name;", where datatype is the type of variable, and name is the name you are giving to the variable. An example of declaring some of the datatypes you'll use most frequently are given below:

{% highlight java %}
int wholeNumber; //Creates an integer variable called wholeNumber

float decimalNumber; //Creates a float variable called decimalNumber

boolean trueOrFalse; //Creates a boolean variable called trueOrFalse
{% endhighlight %}

When you've declared a variable, you can initialise it, or set its value. This is done in the format of "name = value;", where name is the name of your variable, and value is the value you are telling the variable to hold.
An example of how to set variable values for ints, floats and booleans is given below:

{% highlight java %}
wholeNumber = 3;
//the above line of code sets the wholeNumber variable to 3

decimalNumber = 7.5f;
//the above line of code sets the decimalNumber variable to 7.5

trueOrFalse = true;
//the above line of code sets the trueOrFalse variable to true
{% endhighlight %}

Declaring and initialising a variable can then be done all in one go, with the format: "datatype name = value;"

Watch the video below to get a short introduction to using variables.

<h2>Explore</h2>
What other data types are there?
