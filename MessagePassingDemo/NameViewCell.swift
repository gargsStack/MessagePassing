//
//  NameViewCell.swift
//  MessagePassingDemo
//
//  Created by Vivek on 11/05/18.
//  Copyright © 2018 Vivek. All rights reserved.
//

import UIKit


class NameViewCell: UITableViewCell {
    
    //IBOutlet
    @IBOutlet var animateButton: UIButton!
    
    //Variables
    var buttonAction: (() -> ())? = nil //This will have the closure
    
    
     //MARK:- View's Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //MARK:- Buton Action
    @IBAction func showAnimationButtonTapped(_ sender: UIButton){
        
        // check for the closure in buttonAction object
        if let action = buttonAction {
            // execute the closure
            action()
        }
    }
    
}
