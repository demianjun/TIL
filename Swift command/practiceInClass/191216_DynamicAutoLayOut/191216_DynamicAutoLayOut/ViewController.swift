//
//  ViewController.swift
//  191216_DynamicAutoLayOut
//
//  Created by Demian on 2019/12/16.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myCenterXconstraint: NSLayoutConstraint!
    @IBOutlet weak var myCenterYconstraint: NSLayoutConstraint!
    
    
    override func viewDidAppear(_ animated: Bool) {
       
        super.viewDidAppear(animated)
        
        
        
    }
    
    var toggleA = false
    @IBAction func didTapButton(_ sender: Any) {
//        self.view.setNeedsLayout() // layout을 true로 바꿔주는 것
        if toggleA {
            UIView.animate(withDuration: 0.1, animations: {
                self.myCenterYconstraint.constant = 100
                self.view.layoutIfNeeded()
            })
        } else {
            UIView.animate(withDuration: 0.1, animations: {
                self.myCenterYconstraint.constant = -100
                self.view.layoutIfNeeded()
            })
        }
        toggleA.toggle()
    }
    
}

