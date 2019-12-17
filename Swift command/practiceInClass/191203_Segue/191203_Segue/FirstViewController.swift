//
//  ViewController.swift
//  191203_Segue
//
//  Created by Demian on 2019/12/03.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        super.shouldPerformSegue(withIdentifier: identifier, sender: sender)

        let plus = identifier == "plus1" ? 1 : 10
        count += plus
        return count <= 40
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        //           segue.destination // 목적지
        //           segue.source // 출발지
        //           segue.identifier // segue의 이
        
        guard let label_b = segue.destination as? SecondViewController else {
            return
        }
        
        
        
        if segue.identifier == "plus1" {
            //            label_b.text = "Card"
            label_b.text = String(count)
        } else {
            //            label_b.text = "Fullscreen"
            label_b.text = String(count)
        }
        
    }
    

    
    @IBAction func unwindToVC_a(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        
        guard let textfield_a = unwindSegue.source as? SecondViewController else { return }
        print(textfield_a.minus)
        self.count -= textfield_a.minus
        
    }
}

