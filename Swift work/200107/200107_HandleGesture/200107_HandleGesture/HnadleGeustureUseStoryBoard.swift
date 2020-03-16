//
//  HnadleGeustureUseStoryBoard.swift
//  200107_HandleGesture
//
//  Created by Demian on 2020/01/07.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class HnadleGeustureUseStoryBoard: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var coordinateLabel: UILabel!
    
    var didTap = false
    var coordinateX = CGFloat.zero
    var coordinateY = CGFloat.zero
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleTapGesture(_ sender: UITapGestureRecognizer) {
        let tapPoint = sender.location(in: sender.view)
        
        if abs(coordinateX-tapPoint.x) <= 10 && abs(coordinateY-tapPoint.y) <= 10 {
            count += 1
            coordinateX = tapPoint.x
            coordinateY = tapPoint.y
            fixedLabel()
        } else {
            count = 1
            coordinateX = tapPoint.x
            coordinateY = tapPoint.y
            fixedLabel()
        }
    }
    private func fixedLabel() {
        countLabel.text = "횟수: "+"\(count)"
        coordinateLabel.text = "좌표: (\(coordinateX), \(coordinateY))"
    }
    
}
