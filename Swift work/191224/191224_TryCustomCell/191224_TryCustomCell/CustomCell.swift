//
//  CustomCell.swift
//  191224_TryCustomCell
//
//  Created by Demian on 2019/12/24.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

protocol CustomCellDelegate: class {
    func didTabButton(_ customCell: CustomCell)
}

class CustomCell: UITableViewCell {
    
    let myImage = UIImageView()
    let myLabel = UILabel()
    let myButton = UIButton()
    
    
    
    weak var delegate: CustomCellDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setMyUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setMyUI() {
        contentView.addSubview(myImage)
        contentView.addSubview(myLabel)
        contentView.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(didTabButton(_:)), for: .touchUpInside)
        
        updateConstraints()
        layoutSubviews()
        
    }
    
    @objc private func didTabButton(_ sender: UIButton) {
        delegate?.didTabButton(self)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        myImage.translatesAutoresizingMaskIntoConstraints = false
        myImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        myImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        myImage.widthAnchor.constraint(equalToConstant: 75).isActive = true
        myImage.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
//        myLabel.trailingAnchor.constraint(equalTo: myButton.leadingAnchor, constant: -20).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 20).isActive = true
        
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        myButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImage.frame = CGRect(x: 0, y: 0, width: 75, height: 75)
        
        
        myLabel.frame = CGRect(x: 0, y: 0, width: 150, height: 25)
        myLabel.textAlignment = .left
        myLabel.font = .systemFont(ofSize: 23)
        
        myButton.frame = CGRect(x: 0, y: 0, width: 45, height: 25)
        myButton.setTitle("Button", for: .normal)
        myButton.backgroundColor = .systemPink
    }
    
}
