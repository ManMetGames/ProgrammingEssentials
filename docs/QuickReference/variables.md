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
<h1>Quick Reference: Variables</h1>

This is the quick reference page for variables, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/variables">variables chapter</a> and check out the <a href="../Extras/Data_Types">data types guide</a>.

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


<h2>Chapter 2: Variables - Videos</h2>
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


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=Lj1PhCENLOHp-hHm&t=5372" target="_blank">Variables overview</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=6GeIFBgfElHpCeqU&t=5501" target="_blank">Creating variables</a></h3></li>

</ul>