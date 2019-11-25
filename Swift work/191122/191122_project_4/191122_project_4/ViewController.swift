//
//  ViewController.swift
//  191122_project_4
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label_2:UILabel!
    @IBOutlet weak var inputText_2:UITextField!
    @IBOutlet weak var forCheckButton:UIButton!
    
    
    @IBAction func harshadNum(_ sender:UIButton) {
        
        let num1 = inputText_2.text
        var a1:Int! = Int(num1!)
        let b1:Int! = Int(num1!)
        var arrayNums:[Int] = []
        
        while a1 > 0 {
            let arrayNum = a1%10
            arrayNums = [arrayNum] + arrayNums
            
            a1 /= 10
        }
        
        let sum1: Int = arrayNums.reduce(0,{ (first: Int, second: Int) -> Int in
        return first + second

        })
        
        if b1 > 0 {
                
                if b1%sum1 == 0 {
                    label_2.text = String("True")
                    
                } else {
                    label_2.text = String("False")
                    
                }
                
            } else if b1 <= 0 {
                label_2.text = String("정수입력")
            }

        }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

