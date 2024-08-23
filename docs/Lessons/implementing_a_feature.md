---
layout: default
---

<h1>Chapter 11: Implementing a Feature</h1>
<p style="font-size:20px">
In this chapter, we'll be taking a step back, and considering how to implement practically any feature, using the building blocks we've learned over the course!
<br>
For a quick reference, <a href="../QuickReference/implementing_a_feature">click here</a>.
<br></p>

<h2>The Problem</h2>
So far, whenever you've added a new feature to the snake game, you may have been okay following along with the guide, or watching along with the video, but thought "how would I do this myself?", which is a perfectly normal question to have. The answer comes from both practice, and breaking down problems.

<h2 id="breaking_down_problems">Breaking Down Problems</h2>
One of the key skills you'll build when learning to code is breaking down problems. All programmers will consider the steps they need to take to implement a feature by breaking it down into smaller sections, that can be broken down into individual lines of code.

As an example, if we consider that we now have a series of building blocks to do with as we please (looking directly at this course's chapter names!) we have:
<ul>
<li>Variables</li>
<li>Methods</li>
<li>Classes</li>
<li>Conditionals</li>
<li>Arrays</li>
<li>Loops</li>
<li>ArrayLists</li>
<li>Functions</li>
<li>Inheritance</li>
</ul>

And from these we can build basically anything.

We just need to follow three steps:
<blockquote style="font-size:20px">
<ol>
<li>Outline</li>
<li>Breakdown</li>
<li>Translate</li>
</ol>
</blockquote>

First, we `outline` the problem in detail, and build up a clear image of what we actually want to happen.


Secondly, we `breakdown` the outline into smaller and smaller sections, until we can see that each section is only one or two lines of code.


And thirdly, we `translate` each section into code, looking back at the building blocks we have available to us.

<h2 id="a_bouncing_ball">A Bouncing Ball</h2>
To put this into action, let's look at an example of wanting to create a bouncing ball. Feel free to try and re-create this in a new Processing project.


Let's follow the steps we just outlined.

<h3>1. Outline</h3>
The outline for the bouncing ball should detail what we actually want to see on-screen.
We could say that we want:
<ul>
<li>A ball, which we'll draw as a red circle</li>
<li>The ball should spawn in the middle of the screen</li>
<li>The ball should have gravity, and drop towards the bottom of the screen</li>
<li>When the ball touches the bottom of the screen, it should bounce back up</li>
</ul>

<h3>2. Breakdown</h3>
We can then break down each point in the outline, so that each one can't really be broken down further. Feel free to try and break down the outline above before looking at the example below!
Expanding our outline with a breakdown may look like this:
<ul>
<li>A ball, which we'll draw as a red circle
    <ul>
        <li>We want to be able to draw a ball, meaning we need a position, size and Draw method.</li>
        <li>Since these are all related, we can create a Ball class.</li>
        <li>The Draw method in the Ball class should draw a red circle at the ball's position, using the size variable.</li>
    <br></ul>
</li>
<li>The ball should spawn in the middle of the screen
    <ul>
        <li>We need to create a ball object using the ball class.</li>
        <li>When the ball is created, its position should be set to the center of the screen.</li>
        <li>To see the ball, its Draw method should be called in the main void draw.</li>
    <br></ul>
</li>
<li>The ball should have gravity, and drop towards the bottom of the screen
    <ul>
        <li>The ball class should have a Move method.</li>
        <li>In the Move method, the y position of the ball should change.</li>
        <li>As we want the ball to bounce and change how much it moves by each frame, the y should change based on a variable, which we can call speedY.</li>
        <li>In the Move method, we should add gravity to the speedY variable.
        <li>To see this happen over time, the Move method should be called every frame in the main void draw.</li>
    <br></ul>
</li>
<li>When the ball touches the bottom of the screen, it should bounce back up
<ul>
        <li>In the Ball Move method, we should check to see if the y position of the ball is greater than the height of the screen</li>
        <li>If it is, the current value of speedY should be inverted (multiplied by -1) so that the ball will start going the other way.</li>
    <br>
    </ul>
</li>
</ul>

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/ImplementingAFeature.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>

<h3>3. Translate</h3>
Finally, we can translate the breakdown into actual code, again, feel free to give this a go before following along with the video below!

<br>
<div style="display: flex; justify-content: center; align-items: center; height: 100%;">
  <video width="600" controls style="max-width: 100%;">
    <source src="{{ site.baseurl }}/Videos/TranslatingToCode.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
<br>


<br>
<h2>Summary</h2>
Breaking down problems into code is a clear example of a skill related to coding that comes with practice, over just knowing the building blocks or "syntax". To become a better programmer, make sure to practice implementing features, by creating small programs with minimal functionality!
<br>
In the next chapter, we'll be looking at what to do when things go wrong!


<br>
<h2>Project Files</h2>
To download the completed project files for this chapter, <a href="{{ site.baseurl }}/ProcessingFiles/Chapter11_Implementing_A_Feature.zip" target="_blank">click here</a>. Make sure to extract the files from the zip before trying to open them!
<br>

<br>
<h2>Extension Task</h2>
You don't need to complete this to move on, but feel free to be get creative!
<blockquote>
Implement a new feature to the snake game!<br>
This could be anything, a new type of apple, a second player, a menu or game over screen, anything!
</blockquote>


<h2>More Help</h2>
<ul>
    <li><h3><a href="https://www.youtube.com/watch?v=UiYXwUg23Yw" target="_blank">How To Think Like A Programmer - Learn To Solve Problems!</a></h3></li>
</ul>
<br>

<p style="font-size: 30px; text-align: right;"><a href="./fixing_errors">Chapter 12 >></a></p>

<br>
<br>
<br>

	{% include quiz_script.html %}