//
//  LoginViewController.swift
//  LoginUser
//
//  Created by Anna Prilipkina on 02.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var userPassword: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInPressed() {
        userName.text = "User"
        userPassword.text = "Password"
        showAlertLogin(with: "Invalid login or password", and: "Please, enter correct login and password")
    }
    
    
    @IBAction func forgotNamePressed() {
        showAlertforgotName(with: "Oops!", and: "Your name is User")
    }
    
    
    @IBAction func forgotPasswordPressed() {
        showAlertforgotPassword(with: "Oops!", and: "Your password is Password")
    }
    
}

extension LoginViewController {
    
    private func showAlertforgotName(with title: String, and message: String) {
        let alertForgotName = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertForgotName.addAction(okAction)
        present(alertForgotName, animated: true)
    }
}

extension LoginViewController {
    
    private func showAlertforgotPassword(with title: String, and message: String) {
        let alertForgotPassword = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertForgotPassword.addAction(okAction)
        present(alertForgotPassword, animated: true)
    }
}

extension LoginViewController {
    
    private func showAlertLogin(with title: String, and message: String) {
        let alertLogin = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPassword.text = ""}
            alertLogin.addAction(okAction)
        present(alertLogin, animated: true)
    }
}

//extension LoginViewController {
//    private func showAlert(forgot items: [UIAlertController] {
//        for item in items {






