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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? WelcomeViewController else {return}
        guard let welcomeUser = userName.text else {return}
        greetingVC.greetingLb = "Welcome,\(welcomeUser)!👋🏻"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
       
    @IBAction func logInPressed() {
        guard let inputText = userName.text, !inputText.isEmpty  else {
            showAlertLogin(with: "Invalid login or password", and: "Please, enter correct login and password")
            return
        }
        guard let inputPassword = userPassword.text, !inputPassword.isEmpty else {
            showAlertLogin(with: "Invalid login or password", and: "Please, enter correct login and password")
            return
        }
        
        if inputText == "Anna", inputPassword == "Password" {
            userName.text = inputText
            userPassword.text = inputPassword
        } else {
            showAlertLogin(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotNamePressed() {
        showAlert(with: "Oops!😉", and: "Your name is User")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Oops!😉", and: "Your password is Password")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else {return}
        userName.text = ""
        userPassword.text = ""
    }
}

extension LoginViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    private func showAlertLogin(with title: String, and message: String) {
        let alertLogin = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPassword.text = ""
        }
        alertLogin.addAction(okAction)
        present(alertLogin, animated: true)
    }
}




