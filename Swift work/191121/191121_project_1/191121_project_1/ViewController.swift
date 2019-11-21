//
//  ViewController.swift
//  191121_project_1
//
//  Created by Demian on 2019/11/21.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var outputNum = 0
    @IBOutlet weak var label_1: UILabel!
    @IBOutlet weak var ptapButton: UIButton!
    @IBOutlet weak var mtapButton: UIButton!
    
    
    
    
    @IBAction func pTap (_ sender : UIButton) {
        
        outputNum += 1
        label_1.textColor = .systemBlue
        label_1.text = String(outputNum)
        
    }
    
    @IBAction func mTap (_ sender : UIButton) {
         
        outputNum -= 1
        label_1.textColor = .systemRed
        label_1.text = String(outputNum)
         
     }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        }
        
        
    

}
