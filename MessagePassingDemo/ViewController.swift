//
//  ViewController.swift
//  MessagePassingDemo
//
//  Created by Vivek on 11/05/18.
//  Copyright © 2018 Vivek. All rights reserved.
//

import UIKit

let names = ["Vivek", "Rohan", "Vikram", "Vikesh", "Skand", "Tahir", "Rajesh" ]

class ViewController: UIViewController {
    
    //IBOutlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameBottomMarginConstraint: NSLayoutConstraint!
    
    //MARK:- View's Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = ""
        nameLabel.text = "hello"
    }

    func showAnimationFor(name: String){
        nameLabel.text = name
        UIView.animate(withDuration: 3.0, animations: {
            self.nameLabel.alpha = 0.0
            self.nameLabel.transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
            self.nameBottomMarginConstraint.constant = 200
            self.view.layoutIfNeeded()
        }, completion: { _ in
            self.nameBottomMarginConstraint.constant = -50
            self.nameLabel.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.nameLabel.alpha = 1.0
             self.view.layoutIfNeeded()
        })
    }


}

//MARK:- UITAbleView Datasource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as! NameViewCell
        cell.textLabel?.text = names[indexPath.row]
        
        // Assign a closure with the code to be perform
        // This Closure will be excuted when button for this cell instance will be tapped.
        
        cell.buttonAction = {
            self.showAnimationFor(name: names[indexPath.row])
        }
        return cell
    }
}




