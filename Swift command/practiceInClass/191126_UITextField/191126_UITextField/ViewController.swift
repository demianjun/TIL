//
//  ViewController.swift
//  191126_UITextField
//
//  Created by Demian on 2019/11/26.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.becomeFirstResponder()
        
        idTextField.font = UIFont.systemFont(ofSize: 20)
        idTextField.keyboardType = .URL
        
//        idTextField.addTarget(self, action: #selector(textInputMode(_:)), for: .editingChanged)
    }

 
    
    @IBOutlet private weak var idTextField : UITextField!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        idTextField.becomeFirstResponder()
    }// 화면실행시 바로 키보드 올라옴
    
   
    
    @IBAction func idEditingDidBegin(_ sender: UITextField) {
        
//      sender 타입이 any일 경우 type casting을 통해 체크하여도 된다
        
        print("idEditingDidBegin")
        
//        if sender == idTextField {
//        } IBoutlet으로 구별할때
        if sender.tag == 0 {
            print("idTextField")
        } else {
            print("pwTextField")
        }
    }


    
    @IBAction func idDIdEndOnExit(_ sender: Any) {
        print("idDIdEndOnExit")
    }
    
    
    @IBAction func idEditingChanged(_ sender: UITextField) {
        
        
        if sender.tag == 1 {
            if sender.text!.count > 6 {
                sender.resignFirstResponder()
            }
        }
//        view.endEditing(true) -> 뭐든 입력하자마자 내리기
        print("idEditingChanged")
    }
    
    
    @IBAction func idEditingDidEnd(_ sender: Any) {
        print("idEditingDidEnd")
    }
    
    @IBAction func idPrimaryActionTriggered(_ sender: UITextField) {
    
        print("idPrimaryActionTriggered")
        
        if true {
            sender.resignFirstResponder()
        }
    }
    
    
    
}










//    @IBAction func didEndOnExit(_ sender: Any) {
//        print("didEndOnExit")
//    }
//
//    @IBAction func editingChange(_ sender: UITextField) {
//       print(sender.text ?? "")
//
//    }
//
//
//    @IBAction func editingDidBegin(_ sender: Any) {
//
//        print("editDidBegin")
//    }
//
//    @IBAction func primayActionTrigger(_ sender: UITextField) {
//
//    print("primaryAtionTriggered")
//
//        if true {
//            sender.resignFirstResponder()
//        }
//    }
//
//
//
//    @IBAction func editingDidEnd(_ sender: Any) {
//        print("editingDidEnd")
//    }
    

