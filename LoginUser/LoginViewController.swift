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
    
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let user = "Anna"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? WelcomeViewController else {return}
        greetingVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
       
    @IBAction func logInPressed() {
        guard userName.text == user, userPassword.text == password else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password", textField: userPassword)
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotNamePressed() {
        showAlert(with: "Oops!😉", and: "Your name is \(user)", textField: userName)
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Oops!😉", and: "Your password is \(password)", textField: userPassword)
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userName.text = ""
        userPassword.text = ""
    }
}

extension LoginViewController {
    
    private func showAlert(with title: String, and message: String, textField: UITextField) {
        let alertLogin = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPassword.text = ""
        }
        alertLogin.addAction(okAction)
        present(alertLogin, animated: true)
    }
}




