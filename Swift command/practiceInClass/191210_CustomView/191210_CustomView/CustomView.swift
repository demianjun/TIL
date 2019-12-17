//
//  CustomView.swift
//  191210_CustomView
//
//  Created by Demian on 2019/12/10.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

//1. 프로토콜 정의
protocol CustomViewDelegate: class { // class를 정의하는 이유는? -> weak을 참조하고 싶은데 class가 아니면 참조가 되지 않는다.
    func colorForBackground(_ newColor: UIColor?) -> UIColor
}

//2. delegate 프로퍼티 선언
class CustomView: UIView {
    
    weak var delegate: CustomViewDelegate?
    override var backgroundColor: UIColor? {
        get { return super.backgroundColor }
        
        //3. delegate 객체의 메서드 실행
        set {
            let color = delegate?.colorForBackground(newValue)
            let newColor = color ?? newValue ?? .gray
            super.backgroundColor = newColor
            print("새로 변경될 색은 :", newColor)
        }
    }
}


//    override var backgroundColor: UIColor? {
//        get { super.backgroundColor }
//        set {
//            super.backgroundColor = newValue ?? .black // nil일때 black
//
//            if newValue == .red {
//                super.backgroundColor = .blue
//                print("새로 변경될 색은 :", backgroundColor!)
//                //            } else if super.backgroundColor == nil {
//                //                super.backgroundColor = .black
//                //                print("새로 변경될 색은 :", backgroundColor!)
//                //            }
//                print("새로 변경될 색은 :", backgroundColor!)
//
//            }
//        }
//    }


