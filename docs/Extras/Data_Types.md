---
layout: default
---

<h1>Extras: Data Types</h1>
This page details the types of variable that can be used in most programming languages. For a quick reference, <a href="#quick_reference">click here</a>!

<h2>Primitive Types</h2>
In most common programming languages there are two main types of variable. These are primitive types, which can store things like numbers, characters and true/false values. And there are objects, which can tie together further variables and functionality, based on a class definition.<br>

This page will focus on the eight primitive types available in Java (and therefore Processing!), with a special mention to one class type that's very common. To learn more about classes, make sure to go through the <a href="{{ site.baseurl }}Lessons/classes">Classes chapter</a>, or to learn about how to use variables, make sure to cover the <a href="{{ site.baseurl }}Lessons/variables">Variables chapter</a>

<h2>Memory</h2>
Many of the primitive data types store numbers, so it's worthwhile understanding why there are so many different types for numbers! Computers store information using binary, so everything is represented by 0s and 1s, and one single space in memory is called a "bit". One bit can therefore store information that is either 0 or 1, ON or OFF, TRUE or FALSE.

This is where our first primitive type comes in!

<h2>Boolean</h2>
Boolean variables store a single bit of information, representing true or false values.<br>
{% highlight java %}
boolean booleanVariable = true;
{% endhighlight %}
<br>

<h2>Byte</h2>
The next measurement of memory size is a byte! A byte is made up of eight bits, so the byte datatype can store numbers that are eight digits long in binary. This means that they can store whole numbers between -128 and 127. This makes them useful for very memory efficient but small numbers!
{% highlight java %}
byte byteVariable = 127;
{% endhighlight %}
<br>
As a point of interest, remapping a bytes range to 0-255 highlights some places where this data type is used! Colours for example are commonly stored using bytes for each colour channel, so that's why RGB values go up to 255!


<h2>Short</h2>
Doubling the memory of a byte then makes a short, which means we can represent any number that is up to 16 digits in binary! This means the short data type can store whole numbers between -32,768 and 32,767. This again makes them useful for memory efficient variables that can store fairly small numbers!
{% highlight java %}
short shortVariable = 32767;
{% endhighlight %}
<br>

<h2>Int</h2>
Doubling again, an int can store 32 bits of data, which means we can represent any number that is up to 32 digits in binary! This means the int data type can store whole numbers between -2,147,483,648 and 2,147,483,647. This is the most commonly used data type for whole numbers, as most applications will not need to store numbers greater than two billion!
{% highlight java %}
int intVariable = 2147483647;
{% endhighlight %}
<br>

<h2>Long</h2>
Doubling a final time, a long can store 64 bits of data, which means we can represent any number that is up to 64 digits in binary! This means the long data type can store whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807! In most applications you won't need to make use of this data type, but if you have problems when dealing with very large numbers, you might need to move from using ints to using longs!
{% highlight java %}
long longVariable = 9223372036854775807;
{% endhighlight %}
<br>

<h2>Decimal Numbers</h2>
So far we've only talked about whole numbers, but it's often very useful to be able to store numbers with values after the decimal point! Numbers like this (such as 12.3, 0.007, -212.88, etc.) are called floating-point numbers, because the decimal point has moved (or floated!) away from the end of the values. To store these types of numbers we have two further data types: floats and doubles.

<h2>Double</h2>
Floating-point numbers are tricky to store using binary, so when creating a value (like 12.3 for example!) this will default to the double data type, which is short for "double-precision floating-point number". This means that the computer is using double the amount of memory of a float (which we'll talk about shortly!) to store the number, to make it as precise as possible! This means doubles use 64 bits of memory to represent numbers, which roughly equates to storing numbers with 15 to 17 decimal numbers, although the longer the number, the less precisely this will be stored.
{% highlight java %}
double doubleVariable = 0.123456789;
{% endhighlight %}
<br>

<h2>Float</h2>
Because we don't always want to default to using the largest amount of memory possible for storing a decimal number, we can instead use a 32bit data type, float to store shorter decimal numbers. In these cases, you will need to put the letter f after the number to tell the system that it does not need to create a double-precision number. Floats are the most common data type for decimal numbers, so you'll come across them a lot!
{% highlight java %}
float floatVariable = 0.1234f;
{% endhighlight %}
<br>

<h2>Letters and Words</h2>
The final primitive datatype is used to store characters (letters, punctuation, even numbers!). This is char.

<h2>Char</h2>
The char data type stores 16 bits of memory, to store characters by ID (lowercase 'a' for example is stored as character 97). This can be useful when wanting to store specific keys from the keyboard, or when operating on words and sentences.<br>
Chars are written using single quotation marks like this:
{% highlight java %}
char charVariable = 'a';
{% endhighlight %}
<br>
Because chars are technically also numbers, you can get away with adding numbers to them. Adding 1 to 'a' for example, does result in 'b' being stored!

<h2>String</h2>
It's then worth mentioning Strings. In some languages Strings are treated as primitive types, whilst in others they are class objects, as they are in Java. A String is a collection of char variables, that can be used to store words or sentences. Despite being class objects, Strings don't need to be initialised using the new keyword, but instead can be initialised using the word or sentence inside double quotation marks, "like this".
{% highlight java %}
String stringVariable = "test";
{% endhighlight %}

Because they're class objects, String is spelled with a capital letter in Java, and the equality operator (==) won't work (you'll have to use the <a href="https://processing.org/reference/String_equals_.html">.equals</a> method instead).

<br>

<h2 id="quick_reference">Primitive Types Quick Reference</h2>
All of the Java primitive data types can be seen below. The most common ones you will need to use are boolean, int and float!


<table>
<tbody>
<tr><td>Data Type</td><td>Description</td></tr>
<tr><td>boolean</td><td>Stores true or false values</td></tr>
<tr><td>byte</td><td>Stores whole numbers from -128 to 127</td></tr>
<tr><td>short</td><td>Stores whole numbers from -32,768 to 32,767</td></tr>
<tr><td>int</td><td>Stores whole numbers from -2,147,483,648 to 2,147,483,647</td></tr>
<tr><td>long</td><td>Stores whole numbers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807</td></tr>
<tr><td>float</td><td>Stores fractional numbers. Sufficient for storing 6 to 7 decimal digits</td></tr>
<tr><td>double</td><td>Stores fractional numbers. Sufficient for storing 15 decimal digits</td></tr>
<tr><td>char</td><td>Stores a single character/letter or ASCII values</td></tr>
</tbody>
</table>


<br>
<br>
<br>