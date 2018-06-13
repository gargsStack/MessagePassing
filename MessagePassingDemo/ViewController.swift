//
//  ViewController.swift
//  MessagePassingDemo
//
//  Created by Vivek on 11/05/18.
//  Copyright © 2018 Rigil. All rights reserved.
//

import UIKit

let names = ["Vivek", "Rohan", "Vikram", "Vikesh", "Skand" ]

class ViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameBottomMarginConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = ""
        nameLabel.text = "hello"
    }

    func showAnimationFor(name: String){
        nameLabel.text = name
        UIView.animate(withDuration: 1.0, animations: {
            self.nameLabel.alpha = 0.0
            self.nameLabel.font = UIFont.systemFont(ofSize: 40)
            self.nameBottomMarginConstraint.constant = 200
            self.view.layoutIfNeeded()
        }, completion: { _ in
            self.nameBottomMarginConstraint.constant = 30
            
        })
        
        
        
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as! NameViewCell
        cell.textLabel?.text = names[indexPath.row]
        
        cell.buttonAction = {
            self.showAnimationFor(name: names[indexPath.row])
        }
        return cell
    }
}






