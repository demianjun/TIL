//
//  TreeViewController.swift
//  191224_TryCustomCell
//
//  Created by Demian on 2019/12/24.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    private let mainView = UIView()
    private let exButton = UIButton()
    var exLabel = UILabel()
    var exImage = UIImageView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(exImage)
        view.addSubview(exLabel)
        view.addSubview(exButton)
        
        setUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.leftBarButtonItem = .init(title: "BacK", style: .plain, target: self, action: #selector(backButton))

    }
    
    func setUI() {
        view.backgroundColor = .systemBackground

        exImage.translatesAutoresizingMaskIntoConstraints = false
        exImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        exImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        exImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        exImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        

    
        exLabel.translatesAutoresizingMaskIntoConstraints = false
        exLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        exLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true

        exLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 70)
        exLabel.textAlignment = .center
        exLabel.font = .systemFont(ofSize: 45)

        
        exButton.translatesAutoresizingMaskIntoConstraints = false
        exButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 200).isActive = true
        exButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true

        exButton.frame = CGRect(x: 0, y: 0, width: 100, height: 70)
        exButton.setTitle("뒤로", for: .normal)
        exButton.setTitleColor(.black, for: .normal)
        exButton.titleLabel?.font = .systemFont(ofSize: 50)
        exButton.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        

    }

    @objc private func backButton() {
        
        self.navigationController?.popViewController(animated: true)
//        dismiss(animated: false)
    }
}
