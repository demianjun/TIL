//
//  ViewController.swift
//  191210_TextFieldDelegate
//
//  Created by Demian on 2019/12/10.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextField.delegate = self
        
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //red, blue -> black / gray
        //        return string == "red" ? false : true
        return true
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if textField.text == "red"{
             myView.backgroundColor = .black
        } else if textField.text == "blue"{
             myView.backgroundColor = .black
        } else {
             myView.backgroundColor = .gray
        }
    }
    
}
