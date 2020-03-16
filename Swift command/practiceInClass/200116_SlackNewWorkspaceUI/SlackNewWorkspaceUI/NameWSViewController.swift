//
//  NameWSViewController.swift
//  SlackNewWorkspaceUI
//
//  Created by giftbot on 2020/01/07.
//  Copyright © 2020 giftbot. All rights reserved.
//

import UIKit
import AudioToolbox.AudioServices

final class NameWSViewController: UIViewController {
    
    private let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.setTitleColor(.init(red: 18/255, green: 90/255, blue: 153/255, alpha: 1.0), for: .selected)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(didTapNextButton(_:)), for: .touchUpInside)
        return button
    }()
    
    private let closeButton: UIButton = {
        let button = UIButton()
        let closeImage = UIImage(systemName: "xmark")
        button.setImage(closeImage, for: .normal)
        button.setPreferredSymbolConfiguration(.init(scale: .large), forImageIn: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        button.addTarget(self, action: #selector(didTapCloseButton(_:)), for: .touchUpInside)
        return button
    }()
    
    private let wsNameTextField: UITextField = {
        let textField = UITextField()
        let attrString = NSAttributedString(string: "Name your workspace", attributes: [.foregroundColor: UIColor.darkText.withAlphaComponent(0.5)])
        textField.attributedPlaceholder = attrString
        textField.font = UIFont.systemFont(ofSize: 22, weight: .light)
        textField.enablesReturnKeyAutomatically = true
        textField.borderStyle = .none
        textField.returnKeyType = .go
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        
        return textField
    }()
    
    private let floatingLabel: UILabel = {
        let label = UILabel()
        label.text = "Name your workspace"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.alpha = 0.0
        return label
    }()
    private var floatingCenterYConst: NSLayoutConstraint!
    
    private let indicatorView: UIActivityIndicatorView = {
        let indicatorView = UIActivityIndicatorView(style: .medium)
        indicatorView.hidesWhenStopped = true
        return indicatorView
    }()
    private var indicatorViewLeadingConst: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wsNameTextField.becomeFirstResponder()
        
    }
        
    private func setupViews() {
        view.backgroundColor = .white
  
//        view.addSubviews([nextButton, closeButton])
//        view.addSubviews([wsNameTextField, floatingLabel, indicatorView])
        
        view.addSubview(nextButton)
        view.addSubview(closeButton)
        view.addSubview(wsNameTextField)
        view.addSubview(floatingLabel)
        view.addSubview(indicatorView)
        
        navigationController?.navigationBar.isHidden = true
        wsNameTextField.delegate = self

    }
    
    private func setupConstraints() {
        nextButton.layout.top().trailing(constant: -16)
        closeButton.layout.leading(constant: 16).centerY(equalTo: nextButton.centerYAnchor)
        wsNameTextField.layout.leading(constant: 16).trailing(constant: -16).centerY(constant: -115)
        
        floatingLabel.layout.leading(equalTo: wsNameTextField.leadingAnchor)
        
        let defaultCenterYConst = floatingLabel.centerYAnchor.constraint(equalTo: wsNameTextField.centerYAnchor)
        defaultCenterYConst.priority = UILayoutPriority(500)
        defaultCenterYConst.isActive = true
        
        floatingCenterYConst = floatingLabel.centerXAnchor.constraint(equalTo: wsNameTextField.leadingAnchor)
        floatingCenterYConst.priority = .defaultLow
        floatingCenterYConst.isActive = true
        
        indicatorView.layout.centerY(equalTo: wsNameTextField.centerYAnchor)
        indicatorViewLeadingConst = indicatorView.leadingAnchor.constraint(equalTo: wsNameTextField.leadingAnchor)
        indicatorViewLeadingConst.isActive = true
    }
    
    
    @objc private func didTapNextButton(_ sender: UIButton) {
        guard nextButton.isSelected, let text = wsNameTextField.text else { return vibrate() }
        guard !indicatorView.isAnimating else {return}
        
        let textSize = (text as NSString).size(withAttributes: [.font: wsNameTextField.font!])
        indicatorViewLeadingConst.constant = textSize.width + 8
        indicatorView.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.indicatorView.stopAnimating()
            let vc = UrlWSViewController()
//            vc.workspaceName = text
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    private func vibrate() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
    
    @objc private func didTapCloseButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}


extension NameWSViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        didTapNextButton(nextButton)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = textField.text ?? ""
        let replacedText = (text as NSString).replacingCharacters(in: range, with: string)
        nextButton.isSelected = !replacedText.isEmpty
        
        UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: [], animations: {
            if replacedText.isEmpty {
                self.floatingCenterYConst.priority = .defaultLow
                self.floatingLabel.alpha = 0.0
            } else {
                self.floatingCenterYConst.priority = .defaultHigh
                self.floatingLabel.alpha = 1.0
            }
            self.view.layoutIfNeeded()
        })
        return true
    }
}













