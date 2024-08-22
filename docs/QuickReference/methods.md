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
<h1>Quick Reference: Methods</h1>

This is the quick reference page for methods, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/methods">Methods chapter</a>.

<h2>Take Away Info</h2>
<ul>
<li>Variables store data in the computer's memory.</li>
<li>Storing values we want to change in a variable means we can use the variable name in place of the value.</li>
<li>A variable must know what type of data it stores.</li>
<li>Variables must be declared (created) in the format of "TYPE NAME;" before they can be used.</li>
<li>Variables must also be initialised in the format of "NAME = VALUE;" before they can be used.</li>
<li>Variables can be declared and initialised all together as "TYPE NAME = VALUE;", examples of this are shown below.</li>
</ul>

<h2>Common Variable Declarations</h2>
{% highlight java %}

boolean booleanVariable = true; // booleans store true/false values

int intVariable = 10; // ints store whole numbers

float floatVariable = 7.5f; // floats store decimal numbers, values of which need an f on the end

{% endhighlight %}

<br>
<h2>Chapter 3: Methods - Videos</h2>
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


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=pYBtSPzcg6nuB3mV&t=3880" target="_blank">Program Flow, Setup and Draw</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=wxK2gXITObzdD5uf&t=13429" target="_blank">Creating methods (referred to here as "functions")</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=KNaF5qm6Qg7TOSqD&t=10670" target="_blank">Scope (in more complex examples!)</a></h3></li>
</ul>