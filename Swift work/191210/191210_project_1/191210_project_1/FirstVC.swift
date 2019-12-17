//
//  ViewController.swift
//  191210_project_1
//
//  Created by Demian on 2019/12/10.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    var inputTextField = UITextField()
    private let aButton = UIButton()
    private let bButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUI()
        
    }
    
    private func setUI() {
        
        let viewWidth = view.frame.width
        let viewHeight = view.frame.height
        
        inputTextField.frame = CGRect(x: (viewWidth/2-(viewWidth*0.8)/2), y: viewHeight*0.3, width: viewWidth*0.8, height: viewHeight*0.05)
        inputTextField.placeholder = "  Input Text"
        inputTextField.borderStyle = .line
        inputTextField.becomeFirstResponder()
        inputTextField.autocorrectionType = .no
        inputTextField.autocapitalizationType = .none
        //        inputTextField.addTarget(self, action: #selector(userNameFunc(_:)), for: .editingDidEndOnExit)
        view.addSubview(inputTextField)
        
        aButton.frame = CGRect(x: 0, y: viewHeight*0.55, width: viewWidth, height: ((viewHeight*2)/17))
        aButton.backgroundColor = .lightGray
        aButton.setTitle("DelegateA", for: .normal)
        aButton.setTitleColor(.black, for: .normal)
        aButton.titleLabel?.font = .systemFont(ofSize: 20)
        aButton.addTarget(self, action: #selector(secondVC(_ :)), for: .touchUpInside)
        view.addSubview(aButton)
        
        
        bButton.frame = CGRect(x: 0, y: viewHeight*0.7, width: viewWidth, height: ((viewHeight*2)/17))
        bButton.backgroundColor = .lightGray
        bButton.setTitle("DelegateB", for: .normal)
        bButton.setTitleColor(.black, for: .normal)
        bButton.titleLabel?.font = .systemFont(ofSize: 20)
        bButton.addTarget(self, action: #selector(secondVC(_ :)), for: .touchUpInside)
        view.addSubview(bButton)
    }
    
    @objc private func secondVC(_ sender: UIButton) {
        let secondVC = SecondVC()
        
        
        
        present(secondVC, animated: false)
    }
    
}

//extension FirstVC: firstTosecondDelegate {
//    func sendText(_ secondVC: SecondVC) {
//        guard let text = inputTextField.text else { return }
//        secondVC.outputLabel.text = text
//    }
//}

protocol firstTosecondDelegate: class {
    func sendText(_ str: String?) -> String
}


class outputUILabel: UILabel {
    weak var delegate: firstTosecondDelegate?

    override var text: String? {
        get {return super.text}
        set {
            let temp = delegate?.sendText(newValue)
            let str = temp ?? newValue
            super.text = str
        }
    }
    
}
