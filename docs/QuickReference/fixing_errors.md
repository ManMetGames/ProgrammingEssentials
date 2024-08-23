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
<h1>Quick Reference: Fixing Errors</h1>

This is the quick reference page for fixing errors, if you're unsure how to apply the content here, make sure to re-cover the <a href="../Lessons/fixing_errors">Fixing Errors chapter</a>.


<h2>Take Away Info</h2>
<ul>
<li>There are three main types of error, these are logical, compiler and runtime.</li>
<li>Each one is fixed in different ways.</li>
</ul>

<h2>Common Errors</h2>
This section provides additional support for common errors you may face!

<h3>Syntax Error</h3>
This will generally be because you're missing a bracket or semicolon! The editor should highlight a line. The problem will probably be on the line highlighted, or the lines before or after!

<h3>Type Mismatch</h3>
This is when you are trying to put a value of one type into a variable of another. You may need to convert between types, such as casting from a float to an int using (int).

<h3>The Function - Expects Parameters -</h3>
This is when you are using a method or function, and you're passing in the wrong type or number of parameters. Look back at where the method is declared to see what parameters it takes.

<h3>Null Reference Exception</h3>
Null is the empty value for class object variables. If you see this error, you're trying to do something like running a method on an object, but the object doesn't exist. Check through your code to make sure that you're creating the object properly.

<h3>Class Not Found</h3>
This is when you've mistyped a class name!

<h3>Function Does Not Exist</h3>
This is when you've mistyped a method/function name!

<h3>Array Index Out of Bounds</h3>
This is when you're trying to access a point in an array that is smaller than 0, or greater than the last element of the array. This can also apply to ArrayLists, as they make use of arrays. Make sure that whatever value you're using to access the array makes sense. Could it be lower than 0 or higher than the last element somehow?

<h3>EOF / End Of File / Extraneous Input</h3>
This is caused when the system doesn't know where the end of the file is, generally because you're missing a semicolon somewhere. Make sure to go back through all of your classes and methods, checking that they have a closing bracket for every opening bracket. Auto-formatting (ctrl+T in Processing) will help with this, as you can try to see where the formatting looks wrong due to the mismatched brackets.


<br>

<h2>Chapter 12: Fixing Errors - Videos</h2>
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

<h2>More Help</h2>
<ul>
    <li><h3><a href="https://youtu.be/4JzDttgdILQ?si=BWjd9GVJ7mPTdG6E&t=2547" target="_blank">An intro to errors</a></h3></li>
</ul>