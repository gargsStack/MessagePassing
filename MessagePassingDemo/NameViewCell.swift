//
//  NameViewCell.swift
//  MessagePassingDemo
//
//  Created by Rigil on 11/05/18.
//  Copyright © 2018 Rigil. All rights reserved.
//

import UIKit

class NameViewCell: UITableViewCell {

    
    @IBOutlet var showNameButton: UIButton!
    
    var buttonAction: (() -> Void)? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func showAnimationButtonTapped(_ sender: UIButton){
        
        if let action = buttonAction {
            action()
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
