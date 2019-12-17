//
//  ViewController.swift
//  191210_CustomView
//
//  Created by Demian on 2019/12/10.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var myView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.backgroundColor = .red // -> blue가 나오도록
        myView.backgroundColor = nil // -> black이 나오도록
        myView.backgroundColor = .systemGreen
        
        myView.delegate = self
        
    }
}
extension ViewController: CustomViewDelegate {
    func colorForBackground(_ newColor: UIColor?) -> UIColor {
        guard let color = newColor else { return .gray }
        return color == .green ? .blue : color
    }
}

