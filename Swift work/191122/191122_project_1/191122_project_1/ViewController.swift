//
//  ViewController.swift
//  191122_project_1
//
//  Created by Demian on 2019/11/22.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label_1: UILabel!
    @IBOutlet weak var aSwitch: UISwitch!
    
    
    
    
    @IBAction func OnOff (_ sender : UISwitch) {
        
        if aSwitch.isOn == true {
            label_1.text = String("ON")
        } else {
            label_1.text = String("OFF")
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }

}

