
### MainViewController
```swift

import UIKit

class MainViewController: UIViewController {
    
    var countArr:[Int] = []
    var dogNum = 0
    var catNum = 0
    var birdNum = 0
    var dogName = ""
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var dogButton: UIButton!
    @IBOutlet weak var catButton: UIButton!
    @IBOutlet weak var birdButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
        
        if identifier == "dog" && dogNum < 8 {
            return true
        } else if identifier == "cat" && catNum < 10 {
            return true
        } else if identifier == "bird" && birdNum < 15 {
            return true
        }
        return false
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let animalLabel = segue.destination as? SubViewController else { return }
        
        if segue.identifier == "dog" {
            animalLabel.animalName = "개"
        } else if segue.identifier == "cat" {
            animalLabel.animalName = "고양이"
        } else {
            animalLabel.animalName = "새"
        }
        
    }
    @IBAction func unwindToComeOn(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        
        guard let countView = sourceViewController as? SubViewController else {return}
        
        if countView.animalName == "개" {
            dogNum += 1
            countArr = [dogNum, catNum, birdNum]
            mainLabel.text = "\(countArr)"
        } else if countView.animalName == "고양이" {
            catNum += 1
            countArr = [dogNum, catNum, birdNum]
            mainLabel.text = "\(countArr)"
        } else {
            birdNum += 1
            countArr = [dogNum, catNum, birdNum]
            mainLabel.text = "\(countArr)"
        }   
    }
}

```




### SubViewController

```swift 

import UIKit

class SubViewController: UIViewController {
    
    var animalName = ""
    
    @IBOutlet weak var animalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalLabel.text = animalName
        
    }
    
    
    @IBAction func plusOne(_ sender: UIButton) {
        guard let a = presentingViewController as? MainViewController else {return}
        
        a.dogNum += 1
        a.catNum += 1
        a.birdNum += 1
        
    }   
}
```

