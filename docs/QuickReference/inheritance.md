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
<h1>Quick Reference: Inheritance</h1>

This is the quick reference page for inheritance, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/inheritance">Inheritance chapter</a>.

<h2>Take Away Info</h2>
<ul>
<li>Inheritance is used to copy variables and methods from one class to another.</li>
<li>The inheriting class is called the "child" class, and the class it inherited from is called its "parent", or "super" class.</li>
<li>Because the system then knows that objects made from a child class must have all of the methods that the parent class had, they can be stored in variables of the parent type.</li>
<li>This means we can do things like make a list of a parent type, and store different child type objects inside it, as below.</li>
<li>Storing objects in variables of a parent type is called polymorphism.</li>
</ul>


<h2>Inheriting Classes</h2>
{% highlight java %}
class Animal{ //the parent class defines some functionality
    void MakeNoise(){
        println("bark");
    }
}

class Dog extends Animal{ //the extends keyword is used to inherit from Animal
    //this class automatically inherits the MakeNoise method
}

class Cat extends Animal{
    //this class overrides the MakeNoise method by having a method with the same name and parameters
    void MakeNoise(){
        println("meow"); //when a cat object is asked to MakeNoise it will run this method instead
    }
}

void setup(){

    //cats and dogs inherit from Animal so they can be stored in Animal variables
    Animal dog = new Dog();
    Animal cat = new Cat();
    
    //this includes storing them in an Animal list
    ArrayList<Animal> animals = new ArrayList<Animal>();
    animals.add(dog);
    animals.add(cat);
    
    for(Animal a : animals){
        a.MakeNoise();
    }
}
{% endhighlight %}


<br>
<h2>Chapter 10: Inheritance - Videos</h2>
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

<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/e6eXD8DHc_A?si=Y-UBwsA5TuFIKfWY&t=209" target="_blank">Inheritance overview</a></h3></li>
    <li><h3><a href="https://www.youtube.com/watch?v=WCgo3sDFLVQ" target="_blank">Inheritance example</a></h3></li>
    <li><h3><a href="https://www.youtube.com/watch?v=qqYOYIVrso0" target="_blank">Polymorphism</a></h3></li>
</ul>
<br>