//
//  SecondViewController.swift
//  191203_Segue
//
//  Created by Demian on 2019/12/03.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label_b:UILabel!
    @IBOutlet weak var textfield_a: UITextField!
    var text = ""
    var minus = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label_b.text = text
//        label_b.text = "\(count)"
//        print(count)
    }
    
    
    @IBAction func unwindToVC_b(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
    }
    
    @IBAction private func editingChanged(_ sender: UITextField) {
        guard let num = Int(sender.text ?? "0") else { return }
        self.minus = num
    }
    
}
