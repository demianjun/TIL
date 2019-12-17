

```swift

import UIKit

class ThirdViewController: UIViewController {
    
    private let aView = UIView()
    private let bView = UIView()
    private let cView = UIView()
    private let dView = UIView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewSet()
        arrayAutoLayout()
    }
    
    private func viewSet() {
        
        let viewArray = [aView, bView, cView, dView]
        
        for action in viewArray {
            view.addSubview(action)
        }
        
        aView.backgroundColor = .black
        bView.backgroundColor = .blue
        cView.backgroundColor = .red
        dView.backgroundColor = .green
        
        
    }
    
    
    private func arrayAutoLayout() {
        
        aView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            aView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            aView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -10),
            aView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -10)
            
        ])
        
        bView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            bView.leadingAnchor.constraint(equalTo: aView.trailingAnchor, constant: 20),
            bView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            bView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -10)
            
        ])
        cView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cView.topAnchor.constraint(equalTo: aView.bottomAnchor, constant: 20),
            cView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            cView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -10),
            cView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
            
        ])
        dView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dView.topAnchor.constraint(equalTo: bView.bottomAnchor, constant: 20),
            dView.leadingAnchor.constraint(equalTo: cView.trailingAnchor, constant: 20),
            dView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            dView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    
    
}

```

