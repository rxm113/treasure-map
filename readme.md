# Treasure Map solution

## How to run
![alt text](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Dart-logo-wordmark.svg/200px-Dart-logo-wordmark.svg.png2)


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
$ dart run bin/app.dart "input_file_path"
```

## Choice of langague

I have used Dart to create this solution, purely as I have been playing around with, and discovering the language, including the Google framework 'Flutter' for the last week. I enjoy checking out new tech, and thought I would give it as whirl. I thought I could use this as a nice scenario to play!

## Choice of path finding

I have used the following libary:

https://pub.dev/packages/pathfinding

Common path finding algorythm A*, although no weights used.

## Missing/todo  

- [ ] unit tests 
- [ ] More extensive expection handling - mimimal as rushed for solution        
- [ ] comments & code explantion       
- [X] Handle bad input (error files) 


