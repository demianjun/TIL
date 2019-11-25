//
//  ViewController.swift
//  practiceInClass
//
//  Created by Demian on 2019/11/21.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


//    @IBOutlet weak var box1View : UIView!
//    @IBOutlet weak var box2View : UIView!
//    @IBOutlet weak var box3View : UIView!
//    @IBOutlet weak var label1View : UILabel!
    
//    @IBOutlet private weak var myButton : UIButton!
    @IBOutlet weak var myButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        view.backgroundColor = .systemFill
     
        
//        let box1View = UIView()
//        box1View.backgroundColor = .systemGray2
//        box1View.frame = CGRect(x: 30, y: 30, width: 150, height: 150)
//        view.addSubview(box1View)
//
//        let box2View = UIView()
//        box2View.backgroundColor = .systemGray3
//        box2View.frame = CGRect(x: box1View.frame.maxX, y: box1View.frame.maxY, width: 150, height: 150)
//        view.addSubview(box2View)
//
//        let box3View = UIView()
//        box3View.backgroundColor = .systemGray4
//        box3View.frame = CGRect(x: box2View.frame.maxX, y: box2View.frame.maxY, width: 150, height: 150)
//        view.addSubview(box3View)
//
//        let label1View = UILabel()
//        label1View.text = "First Try"
//        label1View.textColor = .label
//        label1View.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
//        label1View.center = view.center
//        view.addSubview(label1View)
        
        myButton.setTitle("누르세요", for: .normal)
        
        let button = UIButton(type: .system)
        button.setTitle("버튼임", for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        
        view.addSubview(button)
        
        
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }
    
    @objc func didTapButton(_ sender : UIButton) {
        print("버튼 탭")
        
        
        sender.setTitleColor(.systemRed, for : .normal)
    }
    
    @IBAction func myButton(_ sender: Any) {
        print("눌렸습니다.")
    }
}

