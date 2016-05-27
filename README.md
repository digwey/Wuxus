# wuxus
WUXUS iOS mobile development task
============
![Language](https://img.shields.io/badge/language-Swift%202-orange.svg)
![License](https://img.shields.io/badge/WUXUS%20Task-green.svg)


**Table of Contents**  
- [WUXUS iOS development task](#)
- [Required Task](#)
- [Features](#)
- [How to build](#)
- [Notices](#)
- [Screenshots](#)
- [Requirements](#)
- [UML](#)

# Required Task 
Wuxus app assignment
Implement an app which consists of 3 views:
1) A list of posts, where the user can either add a new post or click on a post and be sent to the post view.
2) A post view where the user can see the entire post + comments. The user can go back to the list. Optionally a delete post option can be added.
3) An add post view where the user can add a post.

**Note:**
> -  You should only make an app on the platform relevant to your skillset and the position for which you are applying.
> -  Should use a network library (For IOS: Alamofire or other.)
> -  Use RESTful API from http://jsonplaceholder.typicode.com/1
o Only get results from the user with the userId 1 and the relevant
comments.

#Features
* Swift Programming Language - fully upgraded to version 2
* Custom Cell
![Custom Cell]
(https://raw.githubusercontent.com/digwey/Wuxus/master/WuxusTask/screenshots/custom_cell.png)

![Storyboard]
(https://raw.githubusercontent.com/digwey/Wuxus/master/WuxusTask/screenshots/storyboard.png)

* Protocol-Oriented Programming - Still learning though and finding the best practise of that.

# How to build

1) Clone the repository
```bash
$ git clone https://github.com/digwey/wuxus.git
```

2) Install pods

```bash
$ cd WuxusTask
$ pod install
```

3) Open the workspace in Xcode

```bash
$ open "WuxusTask.xcworkspace"
```
4) Compile and run the app in your simulator or your iOS device

5) If you don't see any data, please check internet connection as the application doesn't check the connectivity status.


Wuxus task is an iOS app developed in Swift 2. The app has been actively upgrading to adopt the latest features of iOS and Swift language.

# Notices
The current version is working with Xcode Version 7.3. If you are using different Xcode version, please check out the previous versions. 

# Screenshots
![Screenshot1]
(https://raw.githubusercontent.com/digwey/Wuxus/master/WuxusTask/screenshots/screen1.png)
![Screenshot2]
(https://raw.githubusercontent.com/digwey/Wuxus/master/WuxusTask/screenshots/screen2.png)
![Screenshot3]
(https://raw.githubusercontent.com/digwey/Wuxus/master/WuxusTask/screenshots/screen3.png)
**Gif file using Xcode Emulator**
![Gif1]
(https://raw.githubusercontent.com/digwey/Wuxus/master/WuxusTask/screenshots/gif.gif)


# Requirements

* Xcode 7
* iOS 9

#UML
This is consider a very simple UML that consider only one view controller in iOS
You can also render sequence diagrams like this:

>- Sequence diagrams using http://bramp.github.io
```sequence
Title: Wuxus Simple Sequence diagrams
iOS Application->Webserver: Send HTTP Get request
Note right of iOS Application: Parse and display Posts and Comments
Webserver->iOS Application: Response JSON response 
```

![Screenshot4]
(https://raw.githubusercontent.com/digwey/Wuxus/master/WuxusTask/screenshots/UML.png)

