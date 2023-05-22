//
//  ViewController.swift
//  geekHw1
//
//  Created by Aidar Satindiev on 18/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTexField: UITextField!
    
    @IBOutlet weak var closedEyeButton: UIButton!
    @IBOutlet weak var openEyeButton: UIButton!

    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func successButton(_ sender: Any) {
        login()
    }
    
    @IBAction func forgotButton(_ sender: Any) {
    }
    
    @IBAction func seePasswordButton(_ sender: Any) {
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
        closedEyeButton.isHidden = !passwordTextField.isSecureTextEntry
        openEyeButton.isHidden = passwordTextField.isSecureTextEntry
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
    }
    private func login(){
        if emailTexField.text?.isEmpty ?? true && passwordTextField.text?.isEmpty ?? true {
            emailTexField.placeholder = "Fill the field, please"
            emailTexField.layer.borderColor = UIColor(red: 56/255,
                                                      green: 95/255,
                                                      blue: 255/255,
                                                      alpha: 1).cgColor
            emailTexField.layer.borderWidth = 1
            
            passwordTextField.placeholder = "Fill the field, please"
            passwordTextField.layer.borderColor = UIColor(red: 56/255,
                                                      green: 95/255,
                                                      blue: 255/255,
                                                      alpha: 1).cgColor
            passwordTextField.layer.borderWidth = 1
        } else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
            navigationController?.pushViewController(vc, animated: true)
        }
            
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

