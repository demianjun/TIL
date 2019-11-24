//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
//        view.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        view.frame = CGRect(x: 0, y: 0, width: 135, height: 667)
        view.backgroundColor = .lightGray

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {
        
        
        let blueView = setupSubView(superView: view)
        let blue1View = setup1SubView(superView: view)
        let redView = setup2SubView(superView: view)
    }
    
    
    
    func setupSubView(superView : UIView) -> UIView {
        let blueView = UIView()
        blueView.frame = CGRect(x: 15, y: 15, width: 345, height: 100)
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        return blueView
    }
    
    func setup1SubView(superView : UIView) -> UIView {
        let blue1View = UIView()
        blue1View.frame = CGRect(x: 375 - 360, y: 667 - 115, width: 345, height: 100)
        blue1View.backgroundColor = .blue
        view.addSubview(blue1View)
        return blue1View
    }
    
    func setup2SubView(superView : UIView) -> UIView {
        let redView = UIView()
        redView.frame = CGRect(x: 15 , y: 50, width: view.frame.size.width - 30, height: 100)
        
        redView.backgroundColor = .red
        view.addSubview(redView)
        return redView
    }
    
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
