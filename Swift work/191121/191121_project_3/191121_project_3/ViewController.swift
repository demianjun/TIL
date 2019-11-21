//
//  ViewController.swift
//  191121_project_3
//
//  Created by Demian on 2019/11/22.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label_1: UILabel!
    @IBOutlet weak var label_2: UILabel!
    @IBOutlet weak var inputInt1: UITextField!
    @IBOutlet weak var inputInt2: UITextField!
    @IBOutlet weak var startButton: UIButton!
    
    
    
    @IBAction func LCMandGCD (_ sender:UIButton) {
        let Num1 = inputInt1.text
        let Num2 = inputInt2.text
        let a: Int! = Int(Num1!)
        let b: Int! = Int(Num2!)
        let (result1, result2) = findLCMAndGCD(a, b)
        
        label_1.text = String(result1)
        label_2.text = String(result2)
    }
    
    
    
    func findLCMAndGCD(_ num1:Int,_ num2:Int) -> (Int, Int){
        
        var a = 0
        var b = max(num1, num2)
        var c = min(num1, num2)
        
        while c != 0 {
            a = b
            b = c
            c = a%b
        }
        return (b, num1*num2/b) //(최대공약수, 최소공배수)
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

