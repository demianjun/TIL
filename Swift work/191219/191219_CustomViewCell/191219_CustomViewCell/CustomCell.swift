//
//  CustomCell.swift
//  191219_CustomViewCell
//
//  Created by Demian on 2019/12/19.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

protocol CustomCellDelegate: class {
    func buttonTouched(_ customCell: CustomCell)
}

class CustomCell: UITableViewCell {
    
    let myButton = UIButton()
    
    weak var delegate: CustomCellDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setMyUI()
        
    }
    
    func setMyUI() {
        contentView.addSubview(myButton)
        myButton.setTitle("Add 1", for: .normal)
        myButton.setTitleColor(.systemBlue, for: .normal)
        myButton.backgroundColor = .systemBackground
        myButton.titleLabel?.font = .systemFont(ofSize: 25)
        myButton.addTarget(self, action: #selector(countUP), for: .touchUpInside)
        
        updateConstraints()
        layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func countUP(_ sender: UIButton) {
        delegate?.buttonTouched(self)
        
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        myButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30).isActive = true
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        myButton.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
    }
    
}
