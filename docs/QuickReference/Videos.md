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

<h1>Video Guide</h1>

This is the home for all of the videos throughout the Programming Essentials course. If you are unsure about how to apply any of the content listed here, make sure to re-cover the main chapters for further detail.

<h1>Search and Highlight</h1>
<div>
<input type="text" id="search" placeholder="Type to search...">
<button onclick="highlight()">Search</button>
</div>

<br>
<h2>Introduction</h2>

<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Introduction.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/introduction">Course Overview</a></h3>
		<ul>
			<li>Course overview</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 1: Getting Started</h2>
For more information, click on the name of a video to see it in context.

<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/downloading_processing.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/getting_started#processing">Processing</a></h3>
		<ul>
			<li>Downloading Processing</li>
			<li>Running Processing</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/using_processing.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/getting_started#using_processing">Using Processing</a></h3>
		<ul>
			<li>Processing layout</li>
			<li>Running and stopping your code</li>
			<li>Saving and loading a file</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/getting_started.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/getting_started#writing_code">Writing Code</a></h3>
		<ul>
			<li>How to write a comment</li>
			<li>Calling a method</li>
			<li>Setting the size of the canvas</li>
			<li>Filling the background with a colour</li>
			<li>Semicolons</li>
			<li>Round brackets</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/drawing_shapes.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/getting_started#drawing_shapes">Drawing Shapes</a></h3>
		<ul>
			<li>Drawing a rectangle</li>
			<li>Coordinates</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/colours.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/getting_started#colour">Colour</a></h3>
		<ul>
			<li>Filling shapes with colour</li>
			<li>Getting the RGB values for a colour</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/printing_to_the_console.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/getting_started#printing_to_the_console">Printing to the Console</a></h3>
		<ul>
			<li>The console</li>
			<li>Printing numbers to the console</li>
			<li>Printing words to the console</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakeChapter1.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/getting_started#snake_video">Snake Game: Part 1</a></h3>
		<ul>
			<li>Finishing the first part of the Snake game example</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 2: Variables</h2>
For more information, click on the name of a video to see it in context.

<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/WhyUseVariables.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/variables#storing_variables">Storing Values in Variables</a></h3>
		<ul>
			<li>What a variable is</li>
			<li>Why variables are useful</li>
		</ul>
	</div>
</div>
<br>

<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/DeclaringVariablesNamingAndDataTypes.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/variables#declaring_a_variable">Declaring A Variable</a></h3>
		<ul>
			<li>Declaring a variable</li>
			<li>Data types</li>
			<li>Variable name limitations and conventions</li>
		</ul>
	</div>
</div>
<br>

<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/InitialisingAndAssigningToVariables.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/variables#initialising_a_variable">Initialising A Variable and Changing Variable Values</a></h3>
		<ul>
			<li>Initialising variables</li>
			<li>Assigning values to variables</li>
			<li>Calculations with variables</li>
		</ul>
	</div>
</div>

<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakeChapter2.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/variables#snake_video">Snake Game: Part 2</a></h3>
		<ul>
			<li>Finishing up the second part of the Snake game example</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 3: Methods</h2>
For more information, click on the name of a video to see it in context.

<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Chapter3Start.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/methods">The Problem</a></h3>
		<ul>
            <li>Why methods are useful</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/voidDraw.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/methods#void_draw">void draw</a></h3>
		<ul>
            <li>Writing a method</li>
            <li>Repeating code over time</li>
            <li>Animating</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/scope.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/methods#curly_brackets">Scope</a></h3>
		<ul>
            <li>Curly brackets</li>
            <li>Code blocks</li>
            <li>Scope</li>
            <li>Variables with the same name</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/voidSetup.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/methods#void_setup">void Setup</a></h3>
		<ul>
            <li>Setting initial variable values</li>
            <li>Global variables</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/CallingYourOwnMethods.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/methods#calling_your_own_methods">Calling Your Own Methods</a></h3>
		<ul>
            <li>Writing a custom method</li>
            <li>Calling a custom method</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/MovingTheSnake.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/methods#calling_your_own_methods">Changing Variables Over Time</a></h3>
		<ul>
            <li>Changing variables over time</li>
            <li>Moving an object</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Chapter3Wrapup.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/methods#snake_video">Snake Game: Part 3</a></h3>
		<ul>
            <li>Overview of creating and using methods</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 4: Classes</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/ObjectOrientedProgramming.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#object_oriented_programming">Object-Oriented Programming</a></h3>
		<ul>
            <li>Object-Oriented Programming (OOP)</li>
            <li>Objects</li>
            <li>Grouping together data and functionality</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/CreatingAClass.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#creating_a_class">Creating a Class</a></h3>
		<ul>
            <li>Creating a class</li>
            <li>Creating a new tab</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/CreatingAndAccessingObjects.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#initialising_class_objects">Initialising Class Objects</a></h3>
		<ul>
            <li>Creating new objects</li>
            <li>The new keyword</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/RefactoringVariableNames.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#refactoring">Refactoring</a></h3>
		<ul>
            <li>Renaming variables</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Constructors.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#constructors">Constructors</a></h3>
		<ul>
            <li>Constructor methods</li>
            <li>Setup for a class object</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/ParameterPassing.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#passing_parameters">Parameter Passing</a></h3>
		<ul>
            <li>Paramaters/arguments</li>
            <li>Passing information into a method</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/RandomAndCasting.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#adding_randomness">Adding Randomness and Casting</a></h3>
		<ul>
            <li>The random function</li>
            <li>Casting</li>
            <li>Converting from a float to an int</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/PlacingTheApple.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#putting_it_together">Putting It Together</a></h3>
		<ul>
            <li>Breaking the canvas into a grid</li>
            <li>Using the random function</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Chapter4Summary.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/classes#snake_video">Snake Game: Part 4</a></h3>
		<ul>
            <li>Overview of using classes, constructors, parameter passing and randomness</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 5: Conditionals</h2>
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

<br>
<h2>Chapter 6: Arrays</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakeSegments.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/arrays">Preparation for Arrays</a></h3>
		<ul>
            <li>Creating a class to be used in an array</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Arrays.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/arrays#arrays">Arrays</a></h3>
		<ul>
            <li>Arrays</li>
            <li>Storing values in a list</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/CreatingAnArray.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/arrays#snake_array">Creating an Array</a></h3>
		<ul>
            <li>Creating an Array</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakePart6.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/arrays#snake_video">Snake Game: Part 6</a></h3>
		<ul>
            <li>Accessing elements of an array</li>
            <li>Accessing methods and variables on an object in an array</li>
            <li>Accessing the size of an array</li>
            <li>Variables pointing to the same object</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 7: Loops</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/WhileLoops.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/Loops#while_loops">While Loops</a></h3>
		<ul>
            <li>While loops</li>
            <li>Repeating code</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/ForLoops.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/Loops#for_loops">For Loops</a></h3>
		<ul>
            <li>For loops</li>
            <li>Repeating code a specific number of times</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/UsingAForLoop.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/Loops#putting_it_into_practice">Putting it into Practice</a></h3>
		<ul>
            <li>Using a for loop</li>
            <li>Looping through an array</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/LoopingBackwards.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/Loops#looping_backwards_through_an_array">Looping Backwards Through an Array</a></h3>
		<ul>
            <li>Looping backwards through an array</li>
            <li>Why looping backwards is useful</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/ForEachLoops.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/Loops#enhanced_for_loops">Enhanced For Loops</a></h3>
		<ul>
            <li>Looping through each item in an array</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakePart7.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/Loops#snake_video">Snake Game: Part 7</a></h3>
		<ul>
            <li>Testing loop changes</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 8: ArrayLists</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/CreatingAnArrayList.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/arraylists">Creating an ArrayList</a></h3>
		<ul>
            <li>Creating an ArrayList</li>
            <li>Angle brackets</li>
            <li>Generic types</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/AddingToAnArrayList.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/arraylists#adding_to_an_arraylist">Adding to an ArrayList</a></h3>
		<ul>
            <li>Adding objects to an ArrayList</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/AccessingElementsInAnArrayList.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/arraylists#accessing_elements_in_an_arraylist">Accessing Elements in an ArrayList</a></h3>
		<ul>
            <li>Accessing the size of an ArrayList</li>
            <li>Accessing elements in an ArrayList</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakePart8.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/arraylists#snake_video">Snake Game: Part 8</a></h3>
		<ul>
            <li>Making use of ArrayLists</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 9: Functions</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Functions.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/functions">Functions</a></h3>
		<ul>
            <li>Returning a value from a method</li>
            <li>The return keyword</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/WritingASimpleFunction.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/functions#putting_it_into_practice">Putting it into Practice</a></h3>
		<ul>
            <li>Writing a function</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/WritingAComplexFunction.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/functions#tying_it_all_together">Tying It All Together</a></h3>
		<ul>
            <li>Writing a more complex function</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakePart9.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/functions#snake_video">Snake Game: Part 9</a></h3>
		<ul>
            <li>Selecting a random element from an ArrayList</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 10: Inheritance</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Inheritance.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/inheritance">Inheritance</a></h3>
		<ul>
            <li>Extending a class</li>
            <li>Inheriting methods and variables from another class</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Polymorphism.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/inheritance#polymorphism">Polymorphism</a></h3>
		<ul>
            <li>Storing an object of a child class in a variable of a parent class type</li>
            <li>Storing objects of multiple types in an ArrayList</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/OverridingFunctionality.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/inheritance#overriding_functionality">Overriding Functionality</a></h3>
		<ul>
            <li>Overriding methods and functions in a child class</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/SnakePart10.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/inheritance#snake_video">Snake Game: Part 10</a></h3>
		<ul>
            <li>Recap of inheritance, polymorphism and overriding</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 11: Implementing a Feature</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/ImplementingAFeature.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/implementing_a_feature">Implementing a Feature</a></h3>
		<ul>
            <li>Outlining features</li>
            <li>Breaking features down</li>
		</ul>
	</div>
</div>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/TranslatingToCode.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/implementing_a_feature">Translating to Code</a></h3>
		<ul>
            <li>Translating a breakdown of features into code</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Chapter 12: Fixing Errors</h2>
For more information, click on the name of a video to see it in context.
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/FixingErrors.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/fixing_errors">Fixing Errors</a></h3>
		<ul>
            <li>Logical errors</li>
            <li>Compiler errors</li>
            <li>Runtime errors</li>
		</ul>
	</div>
</div>
<br>

<br>
<h2>Conclusion</h2>
<br>
<div class="vid-container">
	<div class="vid-video">
		<video width="100%" controls>
			<source src="{{ site.baseurl }}Videos/Conclusion.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div class="vid-content">
		<h3><a href="{{ site.baseurl }}Lessons/conclusion">Conclusion</a></h3>
		<ul>
            <li>Overview of progress</li>
		</ul>
	</div>
</div>
<br>
<br>
<br>


	{% include word_search.html %}