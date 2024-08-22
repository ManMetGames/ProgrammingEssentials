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
<h1>Quick Reference: Arrays</h1>

This is the quick reference page for Arrays, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/arrays">Arrays chapter</a>.

<h2>Take Away Info</h2>
<ul>
<li>Arrays store variables in a list.</li>
<li>They can store simple variables or class objects.</li>
<li>Arrays start at 0, so the final element is one less than the size.</li>
<li>They are created and accessed using square brackets as below.</li>
</ul>


<h2>Array Code</h2>
{% highlight java %}

int[] intArray; // declares an int array

intArray = new intArray[3]; //initialises an int array with three elements

intArray[2] = 10; //elements of the array are accessed using square brackets

println( intArray.length );// .length returns the number of elements

{% endhighlight %}


<br>
<h2>Chapter 6: Arrays - Videos</h2>
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


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://www.youtube.com/watch?v=47JBVxCWXJA" target="_blank">An intro to arrays</a></h3></li>
</ul>
<br>