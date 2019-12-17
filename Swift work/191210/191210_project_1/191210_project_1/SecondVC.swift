//
//  SecondVC.swift
//  191210_project_1
//
//  Created by Demian on 2019/12/10.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    let outputLabel = outputUILabel()
    private let backButton = UIButton()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        outputLabel.delegate = self
        setUI()
        
    }
  
    private func setUI() {
        let viewWidth = view.frame.width
        let viewHeight = view.frame.height
        
        outputLabel.frame = CGRect(x: viewWidth/2-viewWidth*0.7/2,
                                   y: viewHeight/4,
                                   width: viewWidth*0.7,
                                   height: viewHeight*0.3)
        outputLabel.textAlignment = .center
        outputLabel.font = UIFont.systemFont(ofSize: 35)
        outputLabel.text = "nnnn"
        view.addSubview(outputLabel)
        
        backButton.frame = CGRect(x: 0, y: ((viewHeight*6)/11), width: viewWidth, height: ((viewHeight*2)/11))
        backButton.backgroundColor = .white
        backButton.setTitle("Dimiss", for: .normal)
        backButton.setTitleColor(.black, for: .normal)
        backButton.titleLabel?.font = .systemFont(ofSize: 20)
        backButton.addTarget(self, action: #selector(disMiss), for: .touchUpInside)
        view.addSubview(backButton)
        
    }
    
    @objc private func disMiss() {
        
        dismiss(animated: false)
    }
}

extension SecondVC: firstTosecondDelegate {
    func sendText(_ str: String?) -> String {
        guard let text = str else {return " "}
        return text
    }
}

protocol secondTakefirstDelegate: class {
    func takeText()
}
