


import UIKit



class SecondViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
     
  }
   
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
     
    //navigationController?.popViewController(animated: true)
    //navigationController?.popToRootViewController(animated: true)
  }
}
