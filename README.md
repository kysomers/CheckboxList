# CheckboxList (Swift)

CheckboxList is customizable list of checkboxes that allows easy user selection in iOS from a short list of options.

It inherits from UIView and allows the user to set the options listed (let's hope), the font, the text color, whether the user can choose exactly one option or as many as they want, and between round and square boxes next to the options. The corners are slightly rounded as shown by default.



<img src="http://i.imgur.com/SJQj4BI.png" width="250">

### Useage

This is meant to be implemented in storyboard. Set up a view and make sure it subclasses from CheckboxListView. Add all of the constraints you want, but don't set the view's height. The height will be determined when the view gets drawn. The way it's designed, you should set up a constraint programmatically in the View Controller, assign that constraint to set the height of the instance of CheckboxListView you just created, and then update that constraint after you draw the CheckboxListView. This height can then be accessed from the value stored in ChecklistView.height (Note: this is different from ChecklistView.frame.height).

To do the setup, the function you'll be using is:


######func checkboxSetup(checkboxNames: [String], font: UIFont, color : UIColor, isExclusive : Bool)

Where checkboxNames are the names of the boxes on the list, font is the font of the text, color will give the color of the text, and isExclusive will define if exactly one box will be checked or if any number of boxes can be checked. It is after calling this function that you should update the hight of your autolayout constraint

Two other functions you may find useful for appearance are

######func setColor(theColor : UIColor)

and

######func setShape(shape : String)

Which respectively set the color of the text/boxes and the shape of the boxes. The default box shape is square, though an input of "circle" or "round" will make the boxes round.

Finally, and maybe most importantly, is the function used to get the output, which is just

######func getOutput() -> [String]

This will return an array with all of the strings of the options that were selected by the user when this function is called.

###Pods
It exists on cocoapods and can be imported with the name "CheckboxList"

