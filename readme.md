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

## Approach to the problem 

This could be implmented using simple data strucutes, although would be difficult for new team member to colloborate, as well as build upon. I have created the Treasure Map & Coordinate objects, so new functionality can be added in the future, maybe we want to create more types of Treasure maps? Maybe we need to add more attributes to the the current Treasure map? Enemy ships? 

The following function prints the object, to get a better idea of make up. 

```
treasureMap.printTreasureMap();
```

Example output 

```
| X: 0, Y 0} - State.star || X: 1, Y 0} - State.ocea || X: 2, Y 0} - State.ocea || X: 3, Y 0} - State.ocea |
| X: 0, Y 1} - State.reef || X: 1, Y 1} - State.reef || X: 2, Y 1} - State.ocea || X: 3, Y 1} - State.ocea |
| X: 0, Y 2} - State.ocea || X: 1, Y 2} - State.ocea || X: 2, Y 2} - State.gold || X: 3, Y 2} - State.reef |
```


This manner of implementation took pre-planning (rather than cranking out a script with Arrays/ Maps etc), although the pay offs are there in scalabilty. There is effort to put in on performance, I would like to test on very large maps, although time aloud constrcits this.

Naming convention follows Dart standards (very new to Dart so followed), coupled with very desciptive names for vaiuables, classes, funtions etc. 

Some nice stuff could be done with Async functions (Furtures in Dart), for example generating Treasure Map rows concurrently, this would support the efficancy greatly, but one for later, given the time we have. Also, we could fork and emend the path finding libary to better utilse the Objects we have. 

Given time aloud, I have left space for items such as unit tests etc, I don't have the capcity in the scope of this test to create. 

Hey, one for a rainy evening!

## Missing/todo  

- [ ] Complete unit tests 
- [ ] Efficancy testing - many loops which could be improved
- [ ] Object usage, object memory usage (cloning objects) etc - there are notible parts of this code which are horribly inefficant, for example flatterning the graph to run the path finding libary (we could have amended this libary method if more time). 
- [ ] Utlise expection handling (some custom) to move away from if/else statements - used as quick to implement.     
- [ ] Indeoth comments  doc for code explantion       
- [X] Handle known 'bad' input format (error files) 

Hey, it solves the problem in the time we have!
