//
//  ViewController.swift
//  200107_HandleGesture
//
//  Created by Demian on 2020/01/07.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class HandleGesture: UIViewController {
    
    let countLabel = UILabel()
    let coordinateLabel = UILabel()
    var coordinateX = CGFloat.zero
    var coordinateY = CGFloat.zero
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(countLabel)
        view.addSubview(coordinateLabel)
        
        setUI()
        
    }
    private func setUI() {
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            countLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            countLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150)
        ])
        countLabel.font = .systemFont(ofSize: 45)
        countLabel.textColor = .systemRed
        countLabel.textAlignment = .center
        countLabel.text = "횟수: "+"\(count)"
        
        coordinateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            coordinateLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            coordinateLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -150)
        ])
        coordinateLabel.font = .systemFont(ofSize: 20)
        coordinateLabel.textColor = .systemBlue
        coordinateLabel.textAlignment = .left
        coordinateLabel.text = "좌표: (\(coordinateX), \(coordinateY))"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let touchPoint = touch.location(in: touch.view)
        
        if coordinateX <= touchPoint.x+10 && coordinateY <= touchPoint.y+10 {
            count += 1
            
        } else {
            count = 1
    
        }
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let touchPoint = touch.location(in: touch.view)
        
        coordinateX = touchPoint.x
        coordinateY = touchPoint.y
        
        coordinateLabel.text = "좌표: (\(coordinateX), \(coordinateY))"
       
        countLabel.text = "횟수: "+"\(count)"

    }
    
}

