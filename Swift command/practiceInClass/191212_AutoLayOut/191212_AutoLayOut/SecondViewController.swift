//
//  SecondViewController.swift
//  191212_AutoLayOut
//
//  Created by Demian on 2019/12/12.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    private let yellowView = UIView()
    private let greenView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        yellowView.backgroundColor = .systemYellow
        greenView.backgroundColor = .systemGreen
        view.addSubview(yellowView)
        view.addSubview(greenView)
        
        practiceAutoLayout()
        
    }
    
  
    private func practiceAutoLayout() {
        
        
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        yellowView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        yellowView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -5).isActive = true
        
        
        greenView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            greenView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            greenView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor, constant: 10)
           
        ])
        
        
        
        

    }
    
    
}
