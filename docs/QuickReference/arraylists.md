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
<h1>Quick Reference: ArrayLists</h1>

This is the quick reference page for ArrayLists, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/arraylists">ArrayLists chapter</a>.

<h2>Take Away Info</h2>
<ul>
<li>ArrayLists are used to store objects, similar to arrays, but can change their size over time.</li>
<li>When creating an ArrayList, you need to tell it what type of object it can store, using angle brackets.</li>
<li>Adding to, removing from, and accessing an ArrayList is done with methods, as seen below.</li>
</ul>


<h2>ArrayList Code</h2>
{% highlight java %}
class Cat{ //ArrayLists store objects, we'll use this cat example
    void MakeNoise(){
        println("meow");
    }
}

ArrayList<Cat> cats; //declares an ArrayList, passing in the Cat type

void setup(){
    cats = new ArrayList<Cat>(); //initialises an empty ArrayList

    Cat cat1 = new Cat(); //two cat objects for test purposes
    Cat cat2 = new Cat();

    cats.add(cat2); //you can add objects to the end of the ArrayList
    cats.add(0,cat1); //you can also insert objects at a certain point

    cats.get(0).MakeNoise(); //access elements using .get(elementNumber)
    
    println( cats.contains(cat2) ); //.contains will return true/false
    //this will print out true because cat2 is in the list

    cats.remove(0); //remove elements using their element id
    cats.remove(cat2); //or with a direct reference to them
    
    println( cats.size() ); //access the number of elements with .size()
}
{% endhighlight %}


<br>
<h2>Chapter 8: ArrayLists - Videos</h2>
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


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://www.youtube.com/watch?v=HnSJZ4qTcwY" target="_blank">ArrayList overview</a></h3></li>
</ul>
<br>