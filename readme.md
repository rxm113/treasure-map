# Treasure Map solution

I have chosen to complete question 1. of the take home test. This is the solution, please note there are a few missing attributes which i would have liked to complete, although I was advised to only spend a few hours working through. The solution below will work, and output the relevant solutions as per the instructions. Listed in the "Missing/ todo" section below are the items I would have liked to finish up, if this were a 'real world' problem.

## How to run
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Dart-logo-wordmark.svg/200px-Dart-logo-wordmark.svg.png)


Install Dart

Linux
```
$ sudo apt-get update
$ sudo apt-get install apt-transport-https
$ sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
$ sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
```

Mac
```
$ brew tap dart-lang/dart
$ brew install dart
```

run main.dart

```
$ cd project dirctory
$ dart run bin/app.dart "input_file_path.txt"
```
The .answer file will be added in the same directory with .answer appened. 

## Choice of langague

I have used Dart to create this solution, purely for learning, as I have been playing around with, and discovering the language, including the Google framework 'Flutter' for the last week. I enjoy checking out new tech, and thought I would give it a whirl. I thought I could use this as a nice scenario to play!

## Choice of path finding

I have used the following libary:

https://pub.dev/packages/pathfinding

Common path finding algorythm A*, although no weights used.

## Missing/todo  

- [ ] unit tests 
- [ ] efficancy testing
- [ ] Object usage, object memory usage (cloning objects) etc - there are notible parts of this code which are horribly inefficant, for example flatterning the graph to run the path finding libary (we could have amended this libary method if more time). 
- [ ] More extensive expection handling - mimimal as rushed for solution        
- [ ] comments & code explantion       
- [X] Handle bad input (error files) 

Hey, it solves the problem in the time we have!
