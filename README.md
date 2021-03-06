# Hack Technology / Project Attempted


## What you built? 

I built a Garmin Connect IQ Widget for my Garmin watch that, after choosing a relative distance, generates a random cross-country run in the given distance range. The app is written in Monkey C and was tested on my Garmin vivoactive. 

Screenshots:

![](entry.jpg)

![](menu.jpg)

![](run-sample.jpg)

![](real_watch.jpg)

## Who Did What?

I worked on this project individually.

## What you learned

Working on this project, I learned the basics of Monkey C and the process of programming a Garmin watch. I briefly struggled with understanding that Connect IQ uses behavior delegates that work alongside views, mainly because I am most used to Flutter which allows users to combine the UI and the coding logic. I also found out that Math.rand(), while similar in name and function to functions in Java and other languages, actually generates a random number for 0 to (2^31)-1 rather than 0 to 1, which required a bit of messing around to fully realize.

## Author

Thomas Lingard, '22

## Acknowledgments

https://developer.garmin.com/connect-iq/connect-iq-basics/getting-started/

https://www.youtube.com/watch?v=2CJiVXboLws&t=1049s
