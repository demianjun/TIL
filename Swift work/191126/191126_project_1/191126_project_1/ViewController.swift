//
//  ViewController.swift
//  191126_project_1
//
//  Created by Demian on 2019/11/27.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var printLabel = UILabel()
    var inputTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        
        printLabel.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        printLabel.frame.origin.x = screenWidth/2 - printLabel.frame.width/2
        printLabel.frame.origin.y = screenHeight/5 - printLabel.frame.height/2
        
//        printLabel.font = .systemFont(ofSize: 40)
//        printLabel.textColor = .systemRed
        
        printLabel.textColor = .label
        printLabel.textAlignment = .center
        printLabel.text = "출력창"
        
        
        inputTextField.frame = CGRect(x: 0, y: 0, width: 350, height: 100)
        inputTextField.borderStyle = .line
        inputTextField.center = view.center
        inputTextField.font = .systemFont(ofSize: 13)
        
        
        
        inputTextField.addTarget(self, action: #selector(textInput(_:)), for: .editingChanged)
        inputTextField.becomeFirstResponder()
        
        inputTextField.addTarget(self, action: #selector(textEnd(_:)), for: .editingDidEndOnExit)
        
        
        view.addSubview(printLabel)
        view.addSubview(inputTextField)
        
        print(UIScreen.main.bounds.width/2 - printLabel.frame.width/2)
        
        
    }
    
    @objc private func textInput(_ sender : UITextField) {
        
        printLabel.font = .systemFont(ofSize: 40)
        printLabel.textColor = .systemRed
        
        if let textIn = inputTextField.text {

            printLabel.text = textIn

        }

    }
    
    @objc private func textEnd(_ sender : UITextField) {
        
        printLabel.font = .systemFont(ofSize: 20)
        printLabel.textColor = .systemBlue
        
    }
    
}

