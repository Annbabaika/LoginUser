//
//  WelcomeViewController.swift
//  LoginUser
//
//  Created by Anna Prilipkina on 02.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    var user = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome \(user)!"
    }
    
}
