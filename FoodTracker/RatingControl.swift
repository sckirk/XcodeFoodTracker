//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Suzannah Kirk-Daligcon on 1/4/17.
//  Copyright © 2017 SK. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0

    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    
    //MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Yes, button pressed")
    }
    
    
    //MARK: Private Methods
    private func setupButtons() {
        
        for _ in 0..<5 {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.green
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
        
        // print(ratingButtons)    // trying to debug if/why I only have 1 button instead of 5. And now it WORKS?! Why? Maybe I hadn't hit save or something like that prior to my earlier build... Xcode.
    }
    

    
}
