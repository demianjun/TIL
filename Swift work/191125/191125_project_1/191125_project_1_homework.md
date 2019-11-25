### @ A viewController

```swift

import UIKit

var counta = 0
var label_b = UILabel()


class AviewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        
        view.backgroundColor = .systemBackground
       
        let buttonB = UIButton(type: .system)
        buttonB.frame = CGRect(x: 165, y: 200, width: 100, height: 50)
        buttonB.setTitle("Go B", for: .normal)
        buttonB.addTarget(self, action: #selector(bTapButton(_:)), for: .touchUpInside)
        view.addSubview(buttonB)
        

        label_b.frame = CGRect(x: 185, y: 350, width: 150, height: 100)
        label_b.textColor = .label
//        label_b.text = "A화면"
        view.addSubview(label_b)
             
    }
    
    @objc private func bTapButton(_ sender: UIButton){
        
        let b_VC = BviewController()
        b_VC.modalPresentationStyle = .fullScreen
        present(b_VC, animated: true)
        
        countb += 1
//        print(("countb : \(countb)"))
        label_a.text = String(countb)
        
        
        }
 
}
```
       

</br>

### @ B viewController


```swift

import UIKit

var countb = 0
var label_a = UILabel()

class BviewController: UIViewController {
    
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
           print("viewDidLoad")
        
        view.backgroundColor = .systemYellow
        
        let buttonA = UIButton(type: .system)
        buttonA.frame = CGRect(x: 165, y: 200, width: 100, height: 50)
        buttonA.setTitle("Go A", for: .normal)
        buttonA.addTarget(self, action: #selector(aTapButton(_:)), for: .touchUpInside)
        view.addSubview(buttonA)
        

        label_a.frame = CGRect(x: 185, y: 350, width: 150, height: 100)
        label_a.textColor = .label
        
        view.addSubview(label_a)
        
        
    }
    
    @objc private func aTapButton(_ sender: UIButton){
           
        counta += 1
        dismiss(animated: true)
//        print("counta : \(counta)")
        
        label_b.text = String(counta)  
        
    }
  
}
```