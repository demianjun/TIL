
### MainViewController
```swift

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var catANDdogImage: UIImageView!
    @IBOutlet weak var catORdogLabel: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!
    
    let catImage = UIImage(named: "angryCat")
    let dogImage = UIImage(named: "angryDog")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
//        print(Array(UserDefaults.standard.dictionaryRepresentation().keys))
        
        
    }
    
    @IBAction func oNoFF(_ sender: Any) {
        
    
        if mySwitch.isOn == true {
            
            catORdogLabel.text = "화난 개"
            catANDdogImage.image = UIImage.init(named: "angryDog")
            saveData()
        } else if mySwitch.isOn == false {
            
            catORdogLabel.text = "화난 냥"
            catANDdogImage.image = UIImage.init(named: "angryCat")
            saveData()
        }
        
        print(UserDefaults.standard.object(forKey: "label")!)
        print(UserDefaults.standard.bool(forKey: "switch"))
    }
    
    private func saveData() {

        UserDefaults.standard.set(mySwitch.isOn, forKey: "switch")
       
    }
  
    private func loadData() {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "switch")
        if mySwitch.isOn == true {
            catORdogLabel.text = "화난 개"
            catANDdogImage.image = UIImage.init(named: "angryDog")
        } else {
            catORdogLabel.text = "화난 냥"
            catANDdogImage.image = UIImage.init(named: "angryCat")
        }
    }
}

```

