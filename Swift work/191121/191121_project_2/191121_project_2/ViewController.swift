//
//  ViewController.swift
//  191121_project_2
//
//  Created by Demian on 2019/11/21.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label_1: UILabel!
    @IBOutlet weak var inputInt: UITextField!
    @IBOutlet weak var calButton: UIButton!
    
    
    @IBAction func calTap (_ sender : UIButton) {
        
        let num = inputInt.text
        
        let a:Int! = Int(num!)
        
        let resultNum = total(a: a)
        
        label_1.text = String(resultNum)
        
    }
    
    func total(a:Int) -> Int {
            
            var result1 = 0
            
            for i in 1...abs(a) {
                result1 += i
            }
            if a > 0 {
            return result1
            } else {
            return -(result1 - 1)
            }
        }


    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    }


