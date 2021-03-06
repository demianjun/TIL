//
//  ViewController.swift
//  UserDefaults
//
//  Created by giftbot on 2019. 11. 20..
//  Copyright © 2019년 giftbot. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var alertSwitch: UISwitch!
    
    // MARK: Action Handler
    
    @IBAction func saveData(_ button: UIButton) {
        
        UserDefaults.standard.set(alertSwitch.isOn, forKey: "switch")
        UserDefaults.standard.set(datePicker.date, forKey: "date")
        
        print(UserDefaults.standard.object(forKey: "date"))
        print(UserDefaults.standard.bool(forKey: "switch"))
        
        
    }
    
    @IBAction func loadData(_ button: UIButton) {
        alertSwitch.isOn = UserDefaults.standard.bool(forKey: "switch")
        datePicker.date = UserDefaults.standard.object(forKey: "date")! as! Date
        
    }
}

