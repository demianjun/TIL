### @ A viewController

```swift

import UIKit

class AviewController: UIViewController {

    var count = 0
    var label_a = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        
        view.backgroundColor = .systemBackground
       
        let buttonB = UIButton(type: .system)
        buttonB.frame = CGRect(x: 165, y: 200, width: 100, height: 50)
        buttonB.setTitle("Go B", for: .normal)
        buttonB.addTarget(self, action: #selector(bTapButton(_:)), for: .touchUpInside)
        view.addSubview(buttonB)
        

        label_a.frame = CGRect(x: 185, y: 350, width: 150, height: 100)
        label_a.textColor = .label
        view.addSubview(label_a)
        
        
        
    }
        
    
    @objc private func bTapButton(_ sender: UIButton){
        
        let b_VC = BviewController()
        b_VC.modalPresentationStyle = .fullScreen
        present(b_VC, animated: true)
        
        guard let vc = presentedViewController as? BviewController else { return }
        let bviewcontrol = vc.label_b
           
        count += 1
        bviewcontrol.text = String(count)
//        print("check1")
        
        
        }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("AviewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("AviewWillDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("AviewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("AviewDidDisappear")
    }
    
}
```
       

</br>

### @ B viewController


```swift

import UIKit

class BviewController: UIViewController {
    
    
    var label_b = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        
        view.backgroundColor = .systemYellow
        
        let buttonA = UIButton(type: .system)
        buttonA.frame = CGRect(x: 165, y: 200, width: 100, height: 50)
        buttonA.setTitle("Go A", for: .normal)
        buttonA.addTarget(self, action: #selector(aTapButton(_:)), for: .touchUpInside)
        view.addSubview(buttonA)
        

        label_b.frame = CGRect(x: 185, y: 350, width: 150, height: 100)
        label_b.textColor = .label 
        view.addSubview(label_b)
        
        
    }
    
   
    
    @objc private func aTapButton(_ sender: UIButton){
           
        guard let vc = presentingViewController as? AviewController else  { return }
        let aviewcontrol = vc.label_a
        _ = vc.count
        
        vc.count += 1
        dismiss(animated: true)
        aviewcontrol.text = String(vc.count)
//        print("check2")
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("BviewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("BviewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("BviewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("BviewDidDisAppear")
    }
    

}

```