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
<h1>Quick Reference: Functions</h1>

This is the quick reference page for functions, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/functions">Functions chapter</a>.

<h2>Take Away Info</h2>
<ul>
<li>Functions are just methods that return data.</li>
<li>They do this by specifying a return type that isn't void, then using the return keyword to return a value.</li>
<li>The return type can be any type of variable, such as a class object, number or word.</li>
</ul>


<h2>Function Examples</h2>
{% highlight java %}
//return type replaces void
int intMultiply(int a, int b){
    return a * b;
    //functions return data using the return keyword
}

//functions can also call themselves, which is called "recursion"
//this function will return the factorial of a number
//the factorial of a number is found by multiplying it
//by every number smaller than it
//e.g. the factorial of 5 = 5*4*3*2*1
int factorial(int a){
    if(a > 1){
        return a * factorial(a-1);
    }
    return a;
    //functions can have multiple returns
    //but as soon as the first one is found the function exits
}

void setup(){

    //calling a function returns a value, so they can be used like values
    println( intMultiply(5,3) );
    
    println( factorial(5) );

}
{% endhighlight %}


<br>
<h2>Chapter 9: Functions - Videos</h2>
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

<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=shIgzkyvAGeN3PtJ&t=14221" target="_blank">Return types</a></h3></li>
</ul>
<br>