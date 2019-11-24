//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        view.backgroundColor = .lightGray

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {
        
        _ = setupSuperView()
        _ = setup2SubView()
        _ = setup1SubView()
//        let blueView = setupSuperView()
//        let redView = setup2SubView(superView: blueView)
//        let greenView = setup1SubView(subView: redView)
        
    }
    let blueView = UIView()
    let redView = UIView()
    let greenView = UIView()
    
    func setupSuperView() {
        blueView.frame = CGRect(x: 30, y: 30, width: (view.frame.size.width-60), height: (view.frame.size.height-60))
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
       
    }
    
    func setup2SubView() {
        redView.frame = CGRect(x: 30 , y: 30, width: blueView.frame.size.width-60, height: blueView.frame.size.height-60)
        redView.backgroundColor = .red
        blueView.addSubview(redView)
       
    }
    
    func setup1SubView() {
        greenView.frame = CGRect(x: 30, y: 30, width: redView.frame.size.width-60, height: redView.frame.size.height-60)
        greenView.backgroundColor = .green
        redView.addSubview(greenView)
       
    }
    
    
//    func setupSuperView() -> UIView {
//        let blueView = UIView()
//        blueView.frame = CGRect(x: 30, y: 30, width: (view.frame.size.width-60), height: (view.frame.size.height-60))
//        blueView.backgroundColor = .blue
//        view.addSubview(blueView)
//        return blueView
//    }
//
//    func setup2SubView(superView : UIView) -> UIView {
//        let redView = UIView()
//        redView.frame = CGRect(x: 30 , y: 30, width: superView.frame.size.width-60, height: superView.frame.size.height-60)
//        redView.backgroundColor = .red
//        superView.addSubview(redView)
//        return redView
//    }
//
//    func setup1SubView(subView : UIView) -> UIView {
//        let greenView = UIView()
//        greenView.frame = CGRect(x: 30, y: 30, width: subView.frame.size.width-60, height: subView.frame.size.height-60)
//        greenView.backgroundColor = .green
//        subView.addSubview(greenView)
//        return greenView
//    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
