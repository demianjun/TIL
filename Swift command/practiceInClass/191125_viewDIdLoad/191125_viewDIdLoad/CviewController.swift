//
//  Cstage.swift
//  191125_viewDIdLoad
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit


class CviewController: UIViewController {

override func viewDidLoad() {
    super.viewDidLoad()
    if #available(iOS 13.0, *) {
        view.backgroundColor = .systemGray
    } else {
        view.backgroundColor = .gray
    }
    print("cVC viewDidLoad")
    
    setupButton()
    
    
}

private func setupButton() {
    let buttonA = UIButton(type: .system)
    buttonA.frame = CGRect(x: 50, y: 200, width: 100, height: 50)
    buttonA.setTitle("Go A", for: .normal)
    buttonA.addTarget(self, action: #selector(didTapA(_:)), for: .touchUpInside)
    view.addSubview(buttonA)
    
    let buttonB = UIButton(type: .system)
    buttonB.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
    buttonB.setTitle("Go B", for: .normal)
    buttonB.addTarget(self, action: #selector(didTapB(_:)), for: .touchUpInside)
    view.addSubview(buttonB)
    
}


    @objc private func didTapA(_ sender: UIButton) {
        
    presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    
    @objc private func didTapB(_ sender: UIButton) {
        
        dismiss(animated: true)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("cVC viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("cVC viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("cVC viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("cVC viewDidDisappear")
    }
    
    deinit {
     print("deinit")
    }

}
