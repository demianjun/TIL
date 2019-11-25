//
//  nextViewController.swift
//  191125_viewDIdLoad
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class BviewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if #available(iOS 13.0, *) {
            view.backgroundColor = .systemGreen
        } else {
            view.backgroundColor = .green
            // Fallback on earlier versions
        }
        print("bVC viewDidLoad")
        
        setupButton()
    }
    
    private func setupButton() {
        let buttonA = UIButton(type: .system)
        buttonA.frame = CGRect(x: 50, y: 200, width: 100, height: 50)
        buttonA.setTitle("Go A", for: .normal)
        buttonA.addTarget(self, action: #selector(didTapA(_:)), for: .touchUpInside)
        view.addSubview(buttonA)
        
        
        let buttonC = UIButton(type: .system)
        buttonC.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        buttonC.setTitle("Go C", for: .normal)
        buttonC.addTarget(self, action: #selector(didTapC(_:)), for: .touchUpInside)
        view.addSubview(buttonC)
    }
    
    
    @objc private func didTapA(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
        
    @objc private func didTapC(_ sender: UIButton) {
        
        let cVC = CviewController()
//        cVC.modalPresentationStyle = .fullScreen
        present(cVC, animated: true)
    }
        
//    @objc private func didTapC(_ sender: UIButton) {
//        print(presentedViewController) //nil -> 내가 띄운
//        print(presentingViewController) //viewcontroller -> 나를 띄운
//
//        presentingViewController?.view.backgroundColor = .orange
//        guard let vc = presentingViewController as? ViewController else {return}
//        vc.button.setTitle("Click", for: .normal) 수정을 바로 하고 싶을때
//
//        dismiss(animated: true)
//    presentingViewController?.presentingViewController?.dismiss(animated: true) 위와 동일
//
        
        
        
//    @objc private func didTapButton(_ sender: UIButton) {
//    let nextVC = NextViewController()
//    nextVC.modalPresentationStyle = .fullScreen
//    present(nextVC, animated: true)
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("bVC viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("bVC viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("bVC viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("bVC viewDidDisappear")
    }
    
    deinit {
     print("deinit")
    }
    
}
