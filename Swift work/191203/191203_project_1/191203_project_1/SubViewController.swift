//
//  SubViewController.swift
//  191203_project_1
//
//  Created by Demian on 2019/12/03.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    
    var animalName = ""
    
    @IBOutlet weak var animalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalLabel.text = animalName
        
    }
    
    
    @IBAction func plusOne(_ sender: UIButton) {
        guard let a = presentingViewController as? MainViewController else {return}
        
        a.dogNum += 1
        a.catNum += 1
        a.birdNum += 1
        
    }
        
   
        
    
}
