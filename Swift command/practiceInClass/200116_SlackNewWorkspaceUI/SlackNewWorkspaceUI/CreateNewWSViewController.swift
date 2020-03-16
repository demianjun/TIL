//
//  ViewController.swift
//  SlackNewWorkspaceUI
//
//  Created by giftbot on 2020/01/07.
//  Copyright © 2020 giftbot. All rights reserved.
//

import UIKit

final class CreateNewWSViewController: UIViewController {

    private let creatWSButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Create New Workspace", for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        button.addTarget(self, action: #selector(didTapCreatWSButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(creatWSButton)
        
        creatWSButton.layout.top().leading()

    }
    @objc private func didTapCreatWSButton(_ sender: UIButton) {
        let nameWSVC = NameWSViewController()
        let naviController = UINavigationController(rootViewController: nameWSVC)
        naviController.modalPresentationStyle = .fullScreen
        present(naviController, animated: true)
        
    }
}
