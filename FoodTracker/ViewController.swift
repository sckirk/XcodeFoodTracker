//
//  ViewController.swift
//  FoodTracker
//
//  Created by Suzannah Kirk-Daligcon on 1/4/17.
//  Copyright © 2017 SK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties  (outlets)
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var mealNameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        // FYI: When a ViewController instance is loaded, it sets itself as the delegate of its nameTextField property.
    }
    
    

// tutorial advised to delete this function:
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    
    //MARK: Actions  (actions)
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "default text"
    }
    
    
}

