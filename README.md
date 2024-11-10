My notes from creating the Magic 8 Ball project from the Complete Flutter Development Bootcamp with Dart on Udemy

# Debugging along the way
## Problem: Could not build because project depends on cupertino_icons >=0.1.1 <1.0.1 which doesn't support null safety
### Solution: run command 'flutter pub remove cupertino_icons' then run command 'flutter pub add cupertino_icons'

## Problem: Build failed due to use of deprecated Android v1 embedding.
### Solution: go to the android\app\src\main\AndroidManifest.xml file,
### change the <application
    android:name="io.flutter.app.FlutterApplication"
### to <application
        android:name="${applicationName}"
## also change <meta-data
                android:name="flutterEmbedding"
                android:value="2" />
## Problem: java.lang.NoClassDefFoundError: Could not initialize class org.codehaus.groovy.vmplugin.v7.Java7
### Solution: delete entire android folder, run "flutter create ." to create a new android folder w/ updated gradle info
if you have personalized icons in this folder (mipmaps) you'll want to save them elsewhere so you can add them back into your project

![App Brewery Banner](https://github.com/londonappbrewery/Images/blob/master/AppBreweryBanner.png)


# Magic 8 Ball 🎱

## Our Goal

The objective of this challenge is to solidify what you've learn't in the Dicee tutorial. This app will guide you through the steps required to build an 8 ball app and you will be applying what you have learnt about Stateless and Stateful Flutter widgets.


## What you will create

We’re going to make a magical 8 ball app, it will give you the answers to all the tricky questions in life. You can make the ball change at the press of a button. 

![Finished App](https://github.com/londonappbrewery/Images/blob/master/8-ball-flutter-gif.gif)


>This is a companion project to The App Brewery's Complete Flutter Development Bootcamp, check out the full course at [www.appbrewery.co](https://www.appbrewery.co/)

![End Banner](https://github.com/londonappbrewery/Images/blob/master/readme-end-banner.png)
