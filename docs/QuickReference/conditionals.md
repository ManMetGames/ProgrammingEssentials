---
layout: default
---

<style>
        .vid-container {
            display: flex;
            align-items: flex-start;
        }

        .vid-video {
            flex: 1;
        }

        .vid-content {
            flex: 1;
            margin-left: 20px;
        }

        h3 {
            margin-top: 0;
        }

        ul {
            padding-left: 20px;
        }
    </style>
<h1>Quick Reference: Conditionals</h1>

This is the quick reference page for conditionals, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/conditionals">Conditionals chapter</a>.

<h2>Take Away Info</h2>
<ul>
<li>If statements are used to control the flow of code.</li>
<li>If the condition inside the brackets of an if statement equates to true, then the code inside the curly brackets will run.</li>
<li>You can follow an if statement with else if statements to test their conditions only if the previous if statement failed.</li>
<li>You can follow an if statement with an else statement to run that code if the previous condition failed.</li>
</ul>

<h2>Relational and Logical Operators</h2>
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

<h2>Class and Object Code</h2>
{% highlight java %}

boolean a = true;
boolean b = false;

int c = 5;
int d = 10;

if( a ){
    //code in here will run because a is true
}

if( a && b ){
    //code in here will not run because b is false
}

if( c > d ){
    //code here will not run because c is less not than d
}
else if ( c == D ){
    //code here will not run because c is not equal to d
}
else{
    //code here will run because the previous conditions were not met
}


{% endhighlight %}


<br>
<h2>Chapter 5: Conditionals - Videos</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/MovementVariables.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conditionals">Preparing for Conditionals</a></h3>
		<ul>
            <li>Adding variables that can be changed based on conditions</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/IfStatements.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conditionals#if_statements">If Statements</a></h3>
		<ul>
            <li>If statements</li>
            <li>How to run code if a condition is met</li>
            <li>KeyPressed</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/TestingEquality.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conditionals#testing_equality">Testing Equality</a></h3>
		<ul>
            <li>Testing if two values are equal</li>
            <li>Keyboard controls</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/BooleanOperators.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conditionals#comparison_and_logical_operators">Comparison and Logical Operators</a></h3>
		<ul>
            <li>Comparison operators</li>
            <li>Logical operators</li>
            <li>Testing if two values are not equal</li>
            <li>Testing if one value is greater than another</li>
            <li>Testing if one value is less than another</li>
            <li>Testing if two boolean values are both true</li>
            <li>Testing if at least one of two boolean values is true</li>
            <li>Inverting a boolean value</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/LogicalOperators.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conditionals#putting_it_into_practice">Putting It Into Practice</a></h3>
		<ul>
            <li>Combining logical operations</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/ElseAndElseIf.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conditionals#else_and_else_if">Else and Else If</a></h3>
		<ul>
            <li>Running code if an if statement fails</li>
            <li>Running more if statements if an if statement fails</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Modulus.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conditionals#modulus_operator">Modulus Operator</a></h3>
		<ul>
            <li>The modulus operator</li>
            <li>Getting the remainder from a division</li>
            <li>Testing if a number is perfectly divisible by another</li>
            <li>Running code intermittently</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakePart5.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conditionals#snake_video">Snake Game: Part 5</a></h3>
		<ul>
            <li>Using if statments</li>
            <li>Wrapping movement around the canvas</li>
		</ul>
	</div>
</div>
<br>


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=GeCVwZW_atz-fZy4&t=7368" target="_blank">Conditional statements</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=mFjp2IhkwFgY2Z1q&t=7830" target="_blank">Else</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=VexMzMIKd2eTuC76&t=8311" target="_blank">Logical operators</a></h3></li>
</ul>
<br>