//
//  ViewController.swift
//  191122_project_3
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label_1: UILabel!
    @IBOutlet weak var inputText:UITextField!
    @IBOutlet weak var resultButton:UIButton!
    
    @IBAction func numbers(_ sender:UIButton) {
        
        let num = inputText.text
        var arrayNums:[Int] = []
        var a:Int! = Int(num!)
        
        while a > 0 {
            let arrayNum = a%10
            arrayNums = [arrayNum] + arrayNums
            a /= 10
          
        }
        
        let _: Int = arrayNums.reduce(0,{ (first: Int, second: Int) -> Int in
        label_1.text = String(first + second)
        return first + second
        
        })
        
       
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

