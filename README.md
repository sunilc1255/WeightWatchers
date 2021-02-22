# WeightWatchers<br />
<br />
**Language** :- Swift 5.0<br />
**IDE** :- XCode <br />

**How to Run**:-  <br />
1. Open WeightWatchers.xcodeproj in an Xcode <br />
2. Choose any iOS simulator and launch the app <br />
3. The Home Screen will contains, two buttons. i.e., Question-1 and Question-3 <br />
4. By Clicking on Question-1 will take you to another screen with two buttons. i.e., "Does File Exists?" and "Print O/P" <br />
5. Clicking on "Does File Exists" will display an alert about existing of "MyFile.plist" file in root folder. Change the file name to verify this functionality.  <br />
6. Clicking on Print O/P button will print the data that read from plist file in Xcode console.  <br />
7. By Clicking on Question-3 will take you to another screen with a textfield to enter nth integer value and a "Generate Number" Button and an Output Label.  <br />
8. Enter an integer value in textfield and click on "Geneate Number" Button to get the smallest value.  <br />
9. For example, if you enter 6, Then the output label should display the 6th smallest number from the randomly generated 500 numbers. Output should print in console as well. <br />

**Question1ViewController** :-  <br />

This class contains two methos. <br />

**@fileExists** :- It will check whether the plist file exists or not and displays an alert to the user. <br />
**@Print O/P** :- This method will print the O/P that read from plist file. <br />

**Question3ViewController** :-  <br />

This class contains the following methods, <br />

**@generateRandomNumber** :-  This method will generate the 500 random numbers and add them in an array <br />
**@findSmallestNth** :- This method will take the input as randomGeneratedNumbers array and nth integert value and returns the nth smallest integer value<br />
