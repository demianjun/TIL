//
//  ViewController.swift
//  191125_viewDIdLoad
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

var counta = 0
var label_b = UILabel()


class AviewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        
        view.backgroundColor = .systemBackground
       
        let buttonB = UIButton(type: .system)
        buttonB.frame = CGRect(x: 165, y: 200, width: 100, height: 50)
        buttonB.setTitle("Go B", for: .normal)
        buttonB.addTarget(self, action: #selector(bTapButton(_:)), for: .touchUpInside)
        view.addSubview(buttonB)
        
//        var label_b = UILabel()
        label_b.frame = CGRect(x: 185, y: 350, width: 150, height: 100)
        label_b.textColor = .label
//        label_b.text = "A화면"
        view.addSubview(label_b)
        
        
        
    }
    
    @objc private func bTapButton(_ sender: UIButton){
        
        let b_VC = BviewController()
        b_VC.modalPresentationStyle = .fullScreen
        present(b_VC, animated: true)
        
        countb += 1
//        print(("countb : \(countb)"))
        
        
        label_a.text = String(countb)
        
        
        }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("AviewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("AviewWillDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("AviewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("AviewDidDisappear")
    }
    
}

