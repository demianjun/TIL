//
//  ViewController.swift
//  200113_UIViewAnimationPractice
//
//  Created by Demian on 2020/01/13.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonToggle = false
    var buttonToggleTwo = false
    
    var buttonArr: [UIButton] = []
    var buttonArrTwo: [UIButton] = []
    
    var tempSize = UIButton()
    
    var range = 0...4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for numberOfButton in (range).reversed() {
            let leftButton = UIButton()
            view.addSubview(leftButton)
            leftButton.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                leftButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -view.frame.width/4),
                leftButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -view.frame.width/4),
                leftButton.widthAnchor.constraint(equalToConstant: 80),
                leftButton.heightAnchor.constraint(equalToConstant: 80)
            ])
            
            let redValue = CGFloat(arc4random())/CGFloat(UInt32.max)
            let greenValue = CGFloat(arc4random())/CGFloat(UInt32.max)
            let blueValue = CGFloat(arc4random())/CGFloat(UInt32.max)
            leftButton.layer.cornerRadius = 40
            leftButton.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
            leftButton.setTitle("버튼 \(numberOfButton)", for: .normal)
            
            buttonArr.insert(leftButton, at: 0)
            
            if leftButton.titleLabel!.text == "버튼 0" {
                leftButton.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
                buttonToggle = true
            }
        }
        
        for numberOfButton in (range).reversed() {
            let rightButton = UIButton()
//            view.addSubview(rightButton)
            rightButton.frame = CGRect(x: view.frame.width/2 + 70, y: view.frame.height/2 + 270,
                                       width: 80, height: 80)
            
            let redValue = CGFloat(arc4random())/CGFloat(UInt32.max)
            let greenValue = CGFloat(arc4random())/CGFloat(UInt32.max)
            let blueValue = CGFloat(arc4random())/CGFloat(UInt32.max)
            rightButton.layer.cornerRadius = 40
            rightButton.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
            
            rightButton.setTitle("버튼 \(numberOfButton)", for: .normal)
            
            buttonArrTwo.insert(rightButton, at: 0)
            
            if rightButton.titleLabel!.text == "버튼 0" {
                rightButton.addTarget(self, action: #selector(buttonTwoAction(_:)), for: .touchUpInside)
                buttonToggleTwo = true
            }
        }
        view.addSubview(buttonArr[0])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        view.addSubview(buttonArrTwo[0])
        
        for i in range {
            if i != 0 {
                buttonArr[i].transform = .init(scaleX: 0.1, y: 0.1)
                buttonArrTwo[i].transform = .init(scaleX: 0.1, y: 0.1)
            }
        }
    }
    
    @objc private func buttonAction(_ sender: UIButton) {
        switch buttonToggle {
        case true:
            UIView.animate(withDuration: 0.5, animations: {
                for i in self.range {
                    if i != 0{
                        self.buttonArr[i].transform = .identity
                        self.buttonArr[i].center.y = self.buttonArr[0].center.y - CGFloat((120 * i))
                    }
                }
                self.buttonToggle = false
            })
        case false:
            UIView.animate(withDuration: 0.5, animations: {
                for i in self.range {
                    if i != 0 {
                        self.buttonArr[i].transform = .init(scaleX: 0.1, y: 0.1)
                        self.buttonArr[i].center.y = self.buttonArr[0].center.y
                    }
                }
                self.buttonToggle = true
            })
        }
    }
    
    @objc private func buttonTwoAction (_ sender: UIButton) {
        
        switch buttonToggle {
        case true:
            UIView.animateKeyframes(withDuration: 1, delay: 0.0, options: [], animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                    self.buttonArrTwo[1].transform = .identity
                    self.buttonArrTwo[1].center.y = self.buttonArrTwo[0].center.y - CGFloat(120)
                    self.buttonArrTwo[2].center.y = self.buttonArrTwo[1].center.y
                    self.buttonArrTwo[3].center.y = self.buttonArrTwo[2].center.y
                    self.buttonArrTwo[4].center.y = self.buttonArrTwo[3].center.y
                }
                UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                    self.buttonArrTwo[2].transform = .identity
                    self.buttonArrTwo[2].center.y = self.buttonArrTwo[1].center.y - CGFloat(120)
                    self.buttonArrTwo[3].center.y = self.buttonArrTwo[2].center.y
                    self.buttonArrTwo[4].center.y = self.buttonArrTwo[3].center.y
                }
                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                    self.buttonArrTwo[3].transform = .identity
                    self.buttonArrTwo[3].center.y = self.buttonArrTwo[2].center.y - CGFloat(120)
                    self.buttonArrTwo[4].center.y = self.buttonArrTwo[3].center.y
                }
                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                    self.buttonArrTwo[4].transform = .identity
                    self.buttonArrTwo[4].center.y = self.buttonArrTwo[3].center.y - CGFloat(120)
                }
                self.buttonToggle = false
            })
        
        case false:
            UIView.animateKeyframes(withDuration: 1, delay: 0.0, options: [], animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                    self.buttonArrTwo[4].transform = .init(scaleX: 0.1, y: 0.1)
                    self.buttonArrTwo[4].center.y = self.buttonArrTwo[3].center.y
                }
                UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                    self.buttonArrTwo[3].transform = .init(scaleX: 0.1, y: 0.1)
                    self.buttonArrTwo[3].center.y = self.buttonArrTwo[2].center.y
                    self.buttonArrTwo[4].center.y = self.buttonArrTwo[2].center.y
                }
                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                    self.buttonArrTwo[2].transform = .init(scaleX: 0.1, y: 0.1)
                    self.buttonArrTwo[2].center.y = self.buttonArrTwo[1].center.y
                    self.buttonArrTwo[4].center.y = self.buttonArrTwo[1].center.y
                    self.buttonArrTwo[3].center.y = self.buttonArrTwo[1].center.y
                    self.buttonArrTwo[2].center.y = self.buttonArrTwo[1].center.y
                }
                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                    self.buttonArrTwo[1].transform = .init(scaleX: 0.1, y: 0.1)
                    self.buttonArrTwo[1].center.y = self.buttonArrTwo[0].center.y
                    self.buttonArrTwo[4].center.y = self.buttonArrTwo[0].center.y
                    self.buttonArrTwo[3].center.y = self.buttonArrTwo[0].center.y
                    self.buttonArrTwo[2].center.y = self.buttonArrTwo[0].center.y
                    self.buttonArrTwo[1].center.y = self.buttonArrTwo[0].center.y
                }
                self.buttonToggle = true
            })
        }
    }
}




