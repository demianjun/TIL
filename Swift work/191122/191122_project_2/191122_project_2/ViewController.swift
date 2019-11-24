//
//  ViewController.swift
//  191122_project_2
//
//  Created by Demian on 2019/11/22.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label_2: UILabel!
    @IBOutlet weak var aSegment: UISegmentedControl!

    
    
     @IBAction func aSegment (_ sender : UISegmentedControl) {
        let title = aSegment.titleForSegment(at: aSegment.selectedSegmentIndex)
        
            switch aSegment.selectedSegmentIndex {
            case 0:
//                label_2.text = "MacBook Pro"
                label_2.text = title
            case 1:
                label_2.text = title
            case 2:
                label_2.text = title
            default:
                ()
            }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}




