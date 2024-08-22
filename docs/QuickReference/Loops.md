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
<h1>Quick Reference: Loops</h1>

This is the quick reference page for loops, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/loops">Loops chapter</a>.

<h2>Take Away Info</h2>
<ul>
<li>While loops will run code until their condition is false.</li>
<li>For loops formalise the creation of a counter variable, the looping condition and incrementation of the counter.</li>
<li>You can loop backwards through a for loop, which can be useful when removing from an ArrayList.</li>
<li>An enhanced for loop makes it easier to loop through items in an Array or ArrayList.</li>
</ul>


<h2>Array Code</h2>
{% highlight java %}

int w = 0; //counter variable
//loops until the condition in the brackets is false
while(w < 10){ //looping condition
    println(w); //code to loop
    w = w+1; //counter incrementation
}

//for loop folds together the counter variable,
//looping condition and counter incrementation
for(int i = 0; i < 10; i=i+1){
    println(i); //code to loop
}

int[] intArray = new int[3];
//enhanced for loop acts as a "for each" loop
//for each int we'll call "a" in the intArray list
for(int a : intArray){
    println(a); //code to loop
}

{% endhighlight %}


<br>
<h2>Chapter 7: Loops - Videos</h2>
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

<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=soV2gWpxjH3w9lfB&t=10195" target="_blank">While loops</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=Efxv5Zb0-mKBmiwa&t=10811" target="_blank">For loops</a></h3></li>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=3nkEAQP3S8aB-rYU&t=17661" target="_blank">Enhanced for loops</a></h3></li>
</ul>
<br>