//
//  ViewController.swift
//  191126_AlertController
//
//  Created by Demian on 2019/11/26.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//    @IBAction private func didTapButton(_ sender : Any) {
//        let alertController = UIAlertController(title: "타이틀", message: "메세지", preferredStyle: .alert)
//
//
//        let okAction = UIAlertAction(title: "OK", style: .default) {
//            (action) in print("OK 버튼")
//        }
//        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) {
//            (action) in print("Delete 버튼")
//        }// {     (action) in print("Delete 버튼")     } -> closure
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
//            (action) in print("Cancel 버튼")
//        } // cancel은 별도 스타일로 취급
//
//
//        alertController.addAction(okAction)
//        alertController.addAction(deleteAction)
//        alertController.addAction(cancelAction)
//
//        present(alertController, animated: true)
//
//        print("Button")
//    }
            var i = 0
    @IBOutlet weak var label_count : UILabel!
    @IBOutlet weak var forAddButton : UIButton!
    
    @IBAction private func countUp (_ sender : Any) {
        
        let alertController = UIAlertController(title: "카운트추가", message: "", preferredStyle: .alert)
        alertController.addTextField {
            $0.placeholder = "정수값을 입력하세요"
        }
        
        let addCountAction = UIAlertAction(title: "Add Count", style: .default) {
            _ in var addValue = 1
            
            if let textField = alertController.textFields?.first,
                let inputValue = textField.text,
                let number = Int(inputValue) {
                addValue = number
            }
            self.i += addValue
            self.label_count.text = String(self.i)
            
        }
        
        let resetAction = UIAlertAction(title: "RESET", style: .destructive) {
            _ in self.i = 0
            self.label_count.text = String(self.i)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
            _ in print("Cancel 버튼")
        }
        
        
//        alertController.addAction(addCountAction)
//        alertController.addAction(resetAction)
//        alertController.addAction(cancelAction)

        
        for action in [addCountAction, resetAction, cancelAction] {
            
            alertController.addAction(action)
            
        }
        
        
        present(alertController, animated: true)
        
    }
}

