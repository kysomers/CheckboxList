//
//  CheckBoxButton.swift
//  SoKi
//
//  Created by Kyle Somers on 11/1/15.
//  Copyright © 2015 Kyle Somers. All rights reserved.
//

import UIKit

class CheckBoxButton: UIButton {

    

    let nameLabel = UILabel()
    let checkBox = UIImageView()
    var checkedImage = UIImage(named: "CheckedBox")
    var uncheckedImage = UIImage(named: "UncheckedBox")
    var isOn = false
    var setupDone = false
    let fontSize : CGFloat = 18
    let smallMargin : CGFloat = 8
    var buttonColor = UIColor()
    var buttonFont = UIFont()
    
    /**
    This will set up the box and set its name
    
    - parameter boxName: the name associated with the checkbox
    */
    func setName(boxName : String){
        
        if setupDone == false{
            self.addSubview(nameLabel)
            self.addSubview(checkBox)
            self.addTarget(self, action: #selector(CheckBoxButton.toggle(_:)), forControlEvents: .TouchUpInside)
            setupDone = true
        }
        
        nameLabel.text = boxName
        nameLabel.font = buttonFont
        nameLabel.numberOfLines = 1
        nameLabel.sizeToFit()
        
        checkBox.image = uncheckedImage
        checkBox.frame = CGRectMake(0, 0, nameLabel.frame.height, nameLabel.frame.height)
        
        nameLabel.frame.origin = CGPointMake(checkBox.frame.width + smallMargin, 0)
        self.frame.size = CGSizeMake(checkBox.frame.width + smallMargin + nameLabel.frame.width, nameLabel.frame.height)
        
        
        
    }
    
    
    /**
    toggles the button on and off
    
    - parameter sender: always self
    */
    func toggle(sender: AnyObject){
        if isOn == true{
            turnOff()
        }
        else{
            turnOn()
        }
        
    }
    /**
    Checks a box
    */
    func turnOn(){
        isOn = true
        nameLabel.textColor = buttonColor
        //nameLabel.font = UIFont(name: "AvenirNext-DemiBold", size: fontSize)
        nameLabel.sizeToFit()
        
        checkBox.image = checkedImage
        checkBox.image = checkBox.image!.imageWithRenderingMode(.AlwaysTemplate)
        checkBox.tintColor = buttonColor
    }
    /**
    unchecks a box
    */
    func turnOff(){
        isOn = false
        nameLabel.textColor = UIColor.blackColor()
        //nameLabel.font = UIFont(name: "Avenir Next", size: fontSize)
        nameLabel.sizeToFit()
        checkBox.image = uncheckedImage
        checkBox.tintColor = UIColor.blackColor()

    }
    /**
    Sets the color
    
    - parameter theColor: The color that you want to set that button to
    */
    func setColor(theColor : UIColor){
        buttonColor = theColor
        if isOn{
            nameLabel.textColor = buttonColor
            checkBox.image = checkedImage
            checkBox.image = checkBox.image!.imageWithRenderingMode(.AlwaysTemplate)
            checkBox.tintColor = buttonColor
        }
    }
    
    func setShape( shape : NSString){
        if shape.lowercaseString == "circle" || shape.lowercaseString == "round"{
            checkedImage = UIImage(named: "CheckedCircle")
            uncheckedImage = UIImage(named: "UncheckedCircle")
        }
        else{
            checkedImage = UIImage(named: "CheckedBox")
            uncheckedImage = UIImage(named: "UncheckedBox")
        }
        if isOn{
            checkBox.image = checkedImage
            checkBox.image = checkBox.image!.imageWithRenderingMode(.AlwaysTemplate)
            checkBox.tintColor = buttonColor
        }
        else{
            checkBox.image = uncheckedImage

        }
    }
    

}
