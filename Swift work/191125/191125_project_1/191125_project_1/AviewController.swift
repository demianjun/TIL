//
//  ViewController.swift
//  191125_viewDIdLoad
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class AviewController: UIViewController {

    var count = 0
    var label_a = UILabel()

    
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
        label_a.frame = CGRect(x: 185, y: 350, width: 150, height: 100)
        label_a.textColor = .label
//        label_b.text = "A화면"
        view.addSubview(label_a)
        
        
        
    }
        
    
    @objc private func bTapButton(_ sender: UIButton){
        
        let b_VC = BviewController()
        b_VC.modalPresentationStyle = .fullScreen
        present(b_VC, animated: true)
        
        guard let vc = presentedViewController as? BviewController else { return }
        let bviewcontrol = vc.label_b
        
//        print("aviewcount : ", aviewcount)
//        bviewcontrol.text = String(count)
        
        count += 1
        bviewcontrol.text = String(count)
        print("check1")
        
        
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

