//
//  ViewController.swift
//  191125_viewDIdLoad
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("viewDidLoad")
        
        setupUI()
    }
    
    let button = UIButton(type: .system)
    
    func setupUI() {
        if #available(iOS 13.0, *) {
        view.backgroundColor = .systemBackground
        } else {
            view.backgroundColor = .white
        }
//        let button = UIButton(type: .system)
        button.frame = CGRect(x: 0, y: 100, width: 100, height: 50)
        button.center = view.center
        button.setTitle("Go B", for: .normal)
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func didTapButton(_ sender: UIButton){
        
        
        let bVC = BviewController()
//        bVC.view.backgroundColor = .yellow
//        bVC.modalPresentationStyle = .fullScreen
        present(bVC, animated: true)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
}

