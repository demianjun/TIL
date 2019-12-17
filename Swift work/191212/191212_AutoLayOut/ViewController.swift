//
//  ViewController.swift
//  191212_AutoLayOut
//
//  Created by Demian on 2019/12/12.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    private let redView = UIView()
    private let blueView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewSafeAreaInsetsDidChange() {
        setUI()
    }
    
    private func setUI() {
        
        let viewW = view.frame.width
        let viewH = view.frame.height
        let safeT = view.safeAreaInsets.top
        let safeB = view.safeAreaInsets.bottom
        let safeL = view.safeAreaInsets.left
        let safeR = view.safeAreaInsets.right
        
        
        redView.frame = CGRect(x: (safeL+20), y: (safeT+20), width: ((viewW-safeL-safeR)/2-25), height: (viewH-safeB-safeT-20))
        redView.backgroundColor = .systemRed
        view.addSubview(redView)
        
        blueView.frame = CGRect(x: redView.frame.maxX+10, y: redView.frame.minY, width: redView.frame.width, height: redView.frame.height)
        blueView.backgroundColor = .systemBlue
        view.addSubview(blueView)
        
        
    }
    
}

