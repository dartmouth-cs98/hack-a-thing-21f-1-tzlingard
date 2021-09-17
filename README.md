# Hack Technology / Project Attempted


## What you built? 

I built a Garmin Connect IQ Widget for my Garmin watch that, after choosing a relative distance, generates a random cross-country run in the given distance range. The app is written in Monkey C and was tested on my Garmin vivoactive. 

Screenshots:
[Main Menu](menu.jpg)
[Sample of a Run](run-sample.jpg)

## Who Did What?

I worked on this project individually.

## What you learned

Working on this project, I learned the basics of Monkey C and the process of programming a Garmin watch. I briefly struggled understanding that Connect IQ widgets have both an XML as well as a coding component to display the UI, mainly because I am most used to Flutter which combines the UI and the coding logic. I also found out that Math.rand(), while similar in name and function to functions in Java and other languages, actually generates a random number for 0 to (2^31)-1 rather than 0 to 1, which required a bit of debugging to fully realize.

## Author

Thomas Lingard, '22

## Acknowledgments

https://developer.garmin.com/connect-iq/connect-iq-basics/getting-started/
https://www.youtube.com/watch?v=2CJiVXboLws&t=1049s
