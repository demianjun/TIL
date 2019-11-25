//
//  BviewController.swift
//  191125_project_1
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

var countb = 0
var label_a = UILabel()

class BviewController: UIViewController {
    
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
           print("viewDidLoad")
        
        view.backgroundColor = .systemYellow
        
        let buttonA = UIButton(type: .system)
        buttonA.frame = CGRect(x: 165, y: 200, width: 100, height: 50)
        buttonA.setTitle("Go A", for: .normal)
        buttonA.addTarget(self, action: #selector(aTapButton(_:)), for: .touchUpInside)
        view.addSubview(buttonA)
        
//        let label_a = UILabel()
        label_a.frame = CGRect(x: 185, y: 350, width: 150, height: 100)
        label_a.textColor = .label
        
        view.addSubview(label_a)
        
        
    }
    
    @objc private func aTapButton(_ sender: UIButton){
           
        counta += 1
        dismiss(animated: true)
//        print("counta : \(counta)")
        
        label_b.text = String(counta)
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("BviewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("BviewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("BviewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("BviewDidDisAppear")
    }
    

}
