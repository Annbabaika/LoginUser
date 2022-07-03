//
//  WelcomeViewController.swift
//  LoginUser
//
//  Created by Anna Prilipkina on 02.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    @IBOutlet var logOutButton: UIButton!
    
    var greetingLb: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = greetingLb
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
}
