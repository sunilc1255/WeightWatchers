# WeightWatchers

**Language** :- Swift 5.0
**IDE** :- XCode

**How to Run**:- 
Open WeightWatchers.xcodeproj in an Xcode \n
Choose any iOS simulator and launch the app \n
The Home Screen will contains, two buttons. i.e., Question-1 and Question-3
By Clicking on Question-1 will take you to another screen with two buttons. i.e., "Does File Exists?" and "Print O/P"
Clicking on "Does File Exists" will display an alert about existing of "MyFile.plist" file in root folder. Change the file name to verify this functionality. 
Clicking on Print O/P button will print the data that read from plist file in Xcode console. 
By Clicking on Question-3 will take you to another screen with a textfield to enter nth integer value and a "Generate Number" Button and an Output Label. 
Enter an integer value in textfield and click on "Geneate Number" Button to get the smallest value. 
For example, if you enter 6, Then the output label should display the 6th smallest number from the randomly generated 500 numbers. Output should print in console as well. 

**Question1ViewController** :- 

This class contains two methos. 
**@fileExists** :- It will check whether the plist file exists or not and displays an alert to the user.
**@Print O/P** :- This method will print the O/P that read from plist file.

**Question3ViewController** :- 

This class contains the following methods,

**@generateRandomNumber** :-  This method will generate the 500 random numbers and add them in an array
**@findSmallestNth** :- This method will take the input as randomGeneratedNumbers array and nth integert value and returns the nth smallest integer value
