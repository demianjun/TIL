//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {
        let greenView = setupSuperview()
        let redView = setupSubview(superView: greenView)
        
//        greenView.frame.origin = CGPoint(x: 100, y: 100)
        
//        greenView.bounds.origin = CGPoint(x: 0, y: 0)
//        greenView.bounds.origin = CGPoint(x: 50, y: 50)
//        greenView.bounds.origin = CGPoint(x: 150, y: 150)
        
        
        print(greenView.frame)
        print(greenView.bounds)
        
        
        
    }
    
    func setupSuperview() -> UIView {
        let greenView = UIView()
//        greenView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        greenView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        greenView.backgroundColor = .green
        view.addSubview(greenView)
        return greenView
    }
    
    func setupSubview(superView: UIView) -> UIView {
        let redView = UIView()
        redView.frame = CGRect(x: 100, y: 100, width: 80, height: 80)
        redView.backgroundColor = .red
        superView.addSubview(redView)
        return redView
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
