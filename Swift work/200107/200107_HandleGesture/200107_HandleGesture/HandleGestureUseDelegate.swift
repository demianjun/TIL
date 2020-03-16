//
//  HandleGestureUseDelegate.swift
//  200107_HandleGesture
//
//  Created by Demian on 2020/01/07.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class HandleGestureUseDelegate: UIViewController {

    var tapGesture = UITapGestureRecognizer()
    let countLabel = UILabel()
    let coordinateLabel = UILabel()
    var coordinateX = CGFloat.zero
    var coordinateY = CGFloat.zero
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        view.addSubview(countLabel)
        view.addSubview(coordinateLabel)
        view.addGestureRecognizer(tapGesture)
        
        tapGesture.delegate = self
        setUI()
        
    }
  
    private func setUI() {
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            countLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            countLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150)
        ])
        countLabel.font = .systemFont(ofSize: 45)
        countLabel.textColor = .brown
        countLabel.textAlignment = .center
        countLabel.text = "횟수: "+"\(count)"
        
        coordinateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            coordinateLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            coordinateLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -150)
        ])
        coordinateLabel.font = .systemFont(ofSize: 20)
        coordinateLabel.textColor = .systemOrange
        coordinateLabel.textAlignment = .left
        coordinateLabel.text = "좌표: (\(coordinateX), \(coordinateY))"
    }
    
}

extension HandleGestureUseDelegate: UIGestureRecognizerDelegate {
    
    private func fixedLabel() {
        countLabel.text = "횟수: "+"\(count)"
        coordinateLabel.text = "좌표: (\(coordinateX), \(coordinateY))"
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        let tapPoint = touch.location(in: touch.view)

       if abs(coordinateX-tapPoint.x) <= 10 && abs(coordinateY-tapPoint.y) <= 10 {
            count += 1
            coordinateX = tapPoint.x
            coordinateY = tapPoint.y
            fixedLabel()
        } else {
            count = 1
            coordinateX = tapPoint.x
            coordinateY = tapPoint.y
            fixedLabel()
        }
       
        return true
    }
    
    @objc private func tap(_ sender: UITapGestureRecognizer) {
        
    }
}
