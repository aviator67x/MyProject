//
//  ViewController.swift
//  MyProject
//
//  Created by Georhii Kasilov on 05.10.2020.
//  Copyright © 2020 Georhii Kasilov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldUserName.delegate = self
        textFieldPassword.delegate = self
    }
    
    @IBAction func buttonLogin(_ sender: UIButton) {
        if let userName = textFieldUserName.text {
            print("This is written in text field: \(userName)")
        }
        
        if let passWord = textFieldPassword.text {
            print("This is written in text field: \(passWord)")
        }
  
    }
    
    @IBAction func buttonLoginWith(_ sender: UIButton) {
        print("This is the result of pressing the Login button")
    }
    
}

// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let stringTexField = textField.text {
            print(stringTexField)
    }
           return true
    }
}


