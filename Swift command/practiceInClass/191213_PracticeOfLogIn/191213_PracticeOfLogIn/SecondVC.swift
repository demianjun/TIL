//
//  SecondVC.swift
//  191213_PracticeOfLogIn
//
//  Created by Demian on 2019/12/16.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    
    private let dismissButton = UIButton()
    let idLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(dismissButton)
        view.addSubview(idLabel)
        
        setUI()
    }
    
    private func setUI() {
        
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            idLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            idLabel.widthAnchor.constraint(equalToConstant: 220),
            idLabel.heightAnchor.constraint(equalToConstant: 110)
        ])
        
        
        idLabel.font = .systemFont(ofSize: 40)
        idLabel.textAlignment = .center
        idLabel.textColor = .systemBlue
        idLabel.text = UserDefaults.standard.string(forKey: "inputID")
        
        
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            dismissButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            dismissButton.widthAnchor.constraint(equalToConstant: 200),
            dismissButton.heightAnchor.constraint(equalToConstant: 90)
        ])
        
        dismissButton.backgroundColor = .systemBlue
        dismissButton.setTitle("Sign Out", for: .normal)
        dismissButton.setTitleColor(.black, for: .normal)
        dismissButton.titleLabel?.font = .systemFont(ofSize: 35)
        dismissButton.layer.cornerRadius = 12
        dismissButton.addTarget(self, action: #selector(dismissA), for: .touchUpInside)
        
    }
    
    @objc private func dismissA() {
        UserDefaults.standard.removeObject(forKey: "inputID")
        //        dismiss(animated: true)
        
        if #available(iOS 13.0, *) {
            
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                let window = UIWindow(windowScene: windowScene)
                let rootVC = LogInVC()
                window.rootViewController = rootVC
                
                let sceneDelegate = windowScene.delegate as? SceneDelegate
                sceneDelegate?.window = window
                window.makeKeyAndVisible()
            } else {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let window = UIWindow(frame: UIScreen.main.bounds)
                window.rootViewController = LogInVC()
                window.makeKeyAndVisible()
                appDelegate.window = window
            }
            
        }
        
    }
}
