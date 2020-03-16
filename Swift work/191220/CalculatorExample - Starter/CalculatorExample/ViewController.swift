//
//  ViewController.swift
//  CalculatorExample
//
//  Created by giftbot on 2019/12/19.
//  Copyright © 2019 giftbot. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var outputNum: UILabel!
    
    
    var oldInputData = 0.0 //처음 데이터
    var newInputData = 0.0 //화면 데이터
    var outputData = 0.0
    var inputLabelToArr: [String] = []
    var tagData = 0 // 연산자 저장용
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    private func numPadFunc(_ tagNum: Int) {
        
        if oldInputData == 0.0 { // 처음입력
            inputLabelToArr.append("\(tagNum)")
            outputNum.text = inputLabelToArr.joined()
        } else { // 두번째이상 입력
            inputLabelToArr.append("\(tagNum)")
            outputNum.text = inputLabelToArr.joined()
        }
        outputData = Double(inputLabelToArr.joined())!
    }
    
    private func calculationSetting() {
        oldInputData = outputData
        inputLabelToArr = []
    }
    
    private func calcultationFunc(_ tagNum: Int) {
        if tagNum != 55 {
            calculationSetting()
        } else {
            newInputData = outputData
            switch tagData {
            case 51: outputData = oldInputData + newInputData
            case 52: outputData = oldInputData - newInputData
            case 53: outputData = oldInputData * newInputData
            case 54: outputData = oldInputData / newInputData
            default:
                break
            }
            outputNum.text = String(outputData)
        }
        tagData = tagNum
    }
    
    @IBAction func numberPad(_ sender: UIButton) {
        switch sender.tag {
        case 0...9: numPadFunc(sender.tag)
        default:
            break
        }
    }
    @IBAction func calculationPad(_ sender: UIButton) {
        switch sender.tag {
        case 51...55: calcultationFunc(sender.tag)
        default:
            break
        }
    }
    @IBAction func allClear(_ sender: UIButton) {
        outputNum.text = "0"
        oldInputData = 0.0
        newInputData = 0.0
        outputData = 0.0
        tagData = 0
        inputLabelToArr = []
    }
}


//@IBDesignable -> 코드로 작성한 디자인을 스토리보드에서 볼수 있음; #1 조건이 필요함!, #2 클래스 위에 작성해야 함
//@IBInspetable -> 코드로 작성하면 스토리보드에서 옵션을 줄 수 있음


