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
<h1>Quick Reference: Classes</h1>

This is the quick reference page for classes, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/classes">Classes chapter</a>.

<h2>Take Away Info</h2>
<ul>
<li>Classes are used to group together related methods and variables.</li>
<li>These are then used as templates to make objects of that type.</li>
<li>Objects of the same type can have different values in their variables.</li>
<li>Constructors are special methods that don't have a name, and run when an object is created.</li>
</ul>

<h2>Class and Object code</h2>
{% highlight java %}

Cat cat; // Class names are used as variable types

void setup(){
    cat = new Cat(); // creates a new object
    cat.Move(); // . is used to access methods and variables on an object
}

class Cat{
    int whiskerCount = 10; //classes can store variables

    Cat(){ //methods of the class type without a name are constructors
        //code here will run when the object is created
    }

    void Move(){ // classes can have methods in them
        //code
    }
}

{% endhighlight %}

<br>
<h2>Chapter 4: Classes - Videos</h2>
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


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=93lcy8rAmxH__UnH&t=14550" target="_blank">Classes and objects</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=E5-XeYLItVJFNJ-z&t=15920" target="_blank">Constructor arguments</a></h3></li>
</ul>