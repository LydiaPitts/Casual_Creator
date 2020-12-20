# Casual_Creator
Computational Creativity Mission 9: Another Kind of CC. The goal of this mission is to gain experience with the Processing programming language and design and build your own casual creator.
# Bubble Buds

A brief overview for your project that includes answers to the brainstorming questions: (1) what are your users casually creating, (2) how do you keep them engaged and excited to create, and (3) how do you help them make something they are proud to share.
### What are users creating?
Using Bubbled, users write have the ability to customize messages. As users type, the message appears horizontally across the screen, and colorful bubbles with the letters from their message bounce randomly around the canvas. Users are able to pause and slowly step through the bubbles progress, change the colors of the message and background, edit the font, and restart creating with ease. 

### How do I aim to keep users engaged and excited to create?
Written words are often very personal. Users can make creative works with the words of their choosing. Users can choose what they want to say, but it's just the right amount of challenge to acheive the right combination of colors/fonts and tostop the bubbles in the correct place. It is continuaously surprising because users cannot anticipate the bubbles movements; Each time one touches an edge it chages it's velocity on the canvas. It is also continuously surprising through the randomly generated fonts and color combinations. There are seemingly endless combinations. Users can also choose the level of sponteneity; They can slowly step through the program to get exactly what they want, or they can quickly flip through lots of random options. Users can reach a state of flow (or "be in the zone") when they are walking through the program to get exactly what they want. They also may experiance an "energized focus" where they are "fully immersed" when attempting to pause it at just the right moment as the bubbles move at full speed. The personalized messages make it valuable to the user, and the sponteneity keeps them engaged and excited to create.

### How do I help make something users are proud to share?
As stated before, written words can often be very personal, and have the potential to convey a lot a meaning. Being able to write short, meaningful messages is a skill, and Bubble Buds is a platform that offers a creative way to share these messages. Users can also be proud of their artistic eye (and potentially their pausing skills). There is some aspect of luck involved, but to spend the time and pick a combination of colors, bubble configureation, and font that is appealing to the individual requires time and thought - which is something to be proud of. 

## How to run the code?
To run the processing sketch on it's own, select the download the proccessing link in https://processing.org/ and follow the instructions for your machine. After dowloading casual_creator.pde from this repository, open it in Processing. In the top left corner select the circle with an arrow to run the program. From there, just start typing the message! In order to pause the loop press Enter (or return). Re-select Enter to unpause. The Left arrow will clear everything and return the user to a blank white canvas. The Right arrow redraws, so while the program is not looping, a user can step through the bubbles movement slowly.

To run the processing sketch on a browser, simply open index.html in your browser. If the sketch is not appearing, there are likely some browser policy issues. Solution suggestions are outlined here: https://github.com/jeresig/processing-js/blob/master/README.md#loading-processingjs-sketches-locally. The simplest way I found was to follow the directions on https://github.com/lmccart/itp-creative-js/wiki/SimpleHTTPServer and set up a Simple HTTP Server. This requries python to be installed, which you find instrucitons on how to at https://docs.python.org/3.8/index.html. In the terminal, navigate to the directory in which this project is saved. Use cd ./ in order to do this. For example, this was my command:
```bash
cd ./Downloads/Computational\ Creativity/Casual_Creator
```
Once there, start the web server with the following command:
```bash
python3 -m http.server
```
Input ```http://localhost:8000/``` into the browser - This should open index.html and allow you to interact with Bubble Buds as long as it's still running!

## How is Bubble Buds meaningful to me?
This project has been meaningful to me because I can use it to create meaninful things in my own life. With the holiday season and birthdays of my loved ones drawing near, I always do my best to make styalized to and from gift tags. I thought it would be a perfect oppotunity to create these tags with Bubble Buds. I can screen shot my messages and attatch them to the gifts. It makes it extra special because I worked so hard to create them. With COVID, I must celebrate remotely with many of my friends. I can screen record the messages I create with Bubble Buds and share moving messages remotely to those who are close to my heart, but pyscially far. I not only learned a lot but I will be able to share it with those I care about.

## Personal Growth
At least 1 paragraph that explains how working on this system challenged you as a computer scientist. How did you push yourself outside of your comfort zone? Why was this an important challenge for you? What are the next steps for you going forward?

### How working on this system challenged me as a computer scientist?

### How did I push myself outside of my comfort zone? 

### Why was this an important challenge for me? 

### What are the next steps for me going forward?



## Documentation of bugs
Document bugs in your code, if any. (Ideally, you would have no bugs in your final project submission to obtain a perfect score. However, if you find that you have last-minute bugs, it is far better to document them in your README than to have your users discover them on their own.)

## Works Cited
- https://hello.processing.org/
- https://processing.org/tutorials/objects/
- https://processing.org/reference/ 
- https://cs.nyu.edu/~kapp/cs101/processing_on_the_web/ 
- https://cs.nyu.edu/~kapp/cs101/processing_on_the_web/processing.js 
- https://github.com/processing-js/processing-js 
- https://github.com/lmccart/itp-creative-js/wiki/SimpleHTTPServer
- https://en.wikipedia.org/wiki/Flow_(psychology) 
- https://docs.python.org/3.8/index.html






