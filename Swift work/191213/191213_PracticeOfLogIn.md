### LogInVC

```swift
import UIKit

class LogInVC: UIViewController {
    
    private var idTextField = UITextField()
    private var pwTextField = UITextField()
    private let signInButton = UIButton()
    private let point1View = UIView()
    private let point2View = UIView()
    private let point3View = UIView()
    private var mainImage = UIImageView()
    private var idImage = UIImageView()
    private var pwImage = UIImageView()
    private let idLineView = UIView()
    private let pwLineView = UIView()
    
    private let testView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        mainImage.image = UIImage.init(named: "mavericks")
        idImage.image = UIImage.init(named: "idImage")
        pwImage.image = UIImage.init(named: "pwImage")
        
        idTextField.delegate = self
        pwTextField.delegate = self
        
        let subView = [mainImage, idImage, pwImage, idTextField, pwTextField, point1View,
                       point2View, point3View, signInButton, idLineView, pwLineView]
        for inputView in subView {
            view.addSubview(inputView)
        }
        print(UserDefaults.standard.string(forKey: "inputID"))
        print(UserDefaults.standard.string(forKey: "inputID") == UserDefaults.standard.string(forKey: "setID"))
//        checkSignIn()
//        setUI()
        setLog()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        checkSignIn()
    }
    
    private func checkSignIn() {

        if UserDefaults.standard.string(forKey: "inputID") == nil {
            print("sign id is nil")
            setUI()
            
        } else if (UserDefaults.standard.string(forKey: "inputID") == UserDefaults.standard.string(forKey: "setID")) {
            print("sign id is existence")
            let second = SecondVC()
            second.idLabel.text = UserDefaults.standard.string(forKey: "inputID")
            second.modalPresentationStyle = .overFullScreen
            present(second, animated: false)
        }
        
    }
    
    private func setUI() {
        
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            mainImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            mainImage.widthAnchor.constraint(equalToConstant: 331),
            mainImage.heightAnchor.constraint(equalToConstant: 145)
        ])
        
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 30),
            idTextField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -170),
            idTextField.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.6),
            idTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        idTextField.borderStyle = .none
        idTextField.font = .systemFont(ofSize: 20)
        idTextField.placeholder = "아이디를 입력하세요"
        idTextField.autocorrectionType = .no
        idTextField.autocapitalizationType = .none
        
        idLineView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idLineView.centerXAnchor.constraint(equalTo: idTextField.centerXAnchor, constant: -20),
            idLineView.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 0),
            idLineView.widthAnchor.constraint(equalTo: idTextField.widthAnchor, multiplier: 1),
            idLineView.heightAnchor.constraint(equalTo: idTextField.heightAnchor, multiplier: 1/32)
        ])
        
        idLineView.backgroundColor = .systemBlue
        
        idImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idImage.topAnchor.constraint(equalTo: idTextField.topAnchor, constant: 0),
            idImage.trailingAnchor.constraint(equalTo: idTextField.leadingAnchor, constant: -10),
            idImage.widthAnchor.constraint(equalToConstant: 35),
            idImage.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        
        pwImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pwImage.topAnchor.constraint(equalTo: idImage.bottomAnchor, constant: 40),
            pwImage.centerXAnchor.constraint(equalTo: idImage.centerXAnchor, constant: 0),
            pwImage.widthAnchor.constraint(equalTo: idImage.widthAnchor, multiplier: 1.15),
            pwImage.heightAnchor.constraint(equalTo: idImage.heightAnchor, multiplier: 1.15)
        ])
        
        
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pwTextField.centerYAnchor.constraint(equalTo: pwImage.centerYAnchor, constant: 0),
            pwTextField.leadingAnchor.constraint(equalTo: idTextField.leadingAnchor, constant: 0),
            
            pwTextField.widthAnchor.constraint(equalTo: idTextField.widthAnchor, multiplier: 1),
            pwTextField.heightAnchor.constraint(equalTo: idTextField.heightAnchor, multiplier: 1)
        ])
        
        pwTextField.borderStyle = .none
        pwTextField.font = .systemFont(ofSize: 20)
        pwTextField.placeholder = "패스워드를 입력하세요"
        //        pwTextField.textContentType = .password
        pwTextField.isSecureTextEntry = true
        pwTextField.autocorrectionType = .no
        pwTextField.autocapitalizationType = .none
        
        
        pwLineView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pwLineView.centerXAnchor.constraint(equalTo: pwTextField.centerXAnchor, constant: -20),
            pwLineView.topAnchor.constraint(equalTo: pwTextField.bottomAnchor, constant: 0),
            pwLineView.widthAnchor.constraint(equalTo: pwTextField.widthAnchor, multiplier: 1),
            pwLineView.heightAnchor.constraint(equalTo: pwTextField.heightAnchor, multiplier: 1/32)
        ])
        
        pwLineView.backgroundColor = .systemBlue
        
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            signInButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.8),
            signInButton.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        signInButton.backgroundColor = .systemBlue
        signInButton.layer.cornerRadius = 5
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.titleLabel?.font = .systemFont(ofSize: 25)
        signInButton.addTarget(self, action: #selector(Log), for: .touchUpInside)
        
        point1View.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            point1View.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
            point1View.centerXAnchor.constraint(equalTo: mainImage.centerXAnchor, constant: 0),
            point1View.widthAnchor.constraint(equalToConstant: 27),
            point1View.heightAnchor.constraint(equalToConstant: 27)
        ])
        point2View.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            point2View.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
            point2View.trailingAnchor.constraint(equalTo: point1View.leadingAnchor, constant: -27),
            point2View.widthAnchor.constraint(equalTo: point1View.widthAnchor, multiplier: 1),
            point2View.heightAnchor.constraint(equalTo: point1View.heightAnchor, multiplier: 1)
        ])
        point3View.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            point3View.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
            point3View.leadingAnchor.constraint(equalTo: point1View.trailingAnchor, constant: 27),
            point3View.widthAnchor.constraint(equalTo: point1View.widthAnchor, multiplier: 1),
            point3View.heightAnchor.constraint(equalTo: point1View.heightAnchor, multiplier: 1)
        ])
        point1View.layer.cornerRadius = 7
        point1View.backgroundColor = .systemBlue
        point2View.layer.cornerRadius = 7
        point2View.backgroundColor = .systemBlue
        point3View.layer.cornerRadius = 7
        point3View.backgroundColor = .systemBlue
        
    }
    
    private func setLog() {
        UserDefaults.standard.set("mavericks11", forKey: "setID")
        UserDefaults.standard.set("doncici", forKey: "setPW")
    }
    
    private func saveLog() {
        UserDefaults.standard.set(idTextField.text, forKey: "inputID")
    }
    
    @objc private func Log() {
        let idTemp = idTextField.text ?? " "
        let pwTemp = pwTextField.text ?? " "
        
        if idTemp != UserDefaults.standard.string(forKey: "setID") || pwTemp != UserDefaults.standard.string(forKey: "setPW") {
            print("ok")
            UIView.animate(withDuration: 0.3, animations: { self.view.backgroundColor = .systemPink }, completion: { _ in
                self.view.backgroundColor = .systemBackground
            })
            loginit()
        } else {
//            let second = SecondVC()
//            saveLog()
//            second.modalPresentationStyle = .overFullScreen
//            present(second, animated: true)
//            loginit()
            saveLog()
            loginit()
            if #available(iOS 13.0, *) {
            
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                let window = UIWindow(windowScene: windowScene)
                let rootVC = SecondVC()
                rootVC.idLabel.text = UserDefaults.standard.string(forKey: "inputID")
                window.rootViewController = rootVC
                
                let sceneDelegate = windowScene.delegate as? SceneDelegate
                sceneDelegate?.window = window
                window.makeKeyAndVisible()
            } else {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let window = UIWindow(frame: UIScreen.main.bounds)
                window.rootViewController = SecondVC()
                window.makeKeyAndVisible()
                appDelegate.window = window
            }
            
        }
        }
    }
    
    private func loginit() {
        idTextField.text = ""
        pwTextField.text = ""
    }
    
}
extension LogInVC: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        guard let temp = idTextField.text else { return }
        if temp.count >= 16 {
            idTextField.resignFirstResponder()
        }
    }
    //Textfield 수정시작시 올리기
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("editing")
        if UIDevice.current.orientation.isLandscape == false {
            UIView.animate(withDuration: 0.3, animations: ({
                self.idImage.transform = CGAffineTransform(translationX: 0, y: -200)
                self.pwImage.transform = CGAffineTransform(translationX: 0, y: -200)
                self.idTextField.transform = CGAffineTransform(translationX: 0, y: -200)
                self.idLineView.transform = CGAffineTransform(translationX: 0, y: -200)
                self.pwTextField.transform = CGAffineTransform(translationX: 0, y: -200)
                self.pwLineView.transform = CGAffineTransform(translationX: 0, y: -200)
            }))
        } else {
            UIView.animate(withDuration: 0.3, animations: ({
                self.idImage.transform = CGAffineTransform(translationX: 0, y: -70)
                self.pwImage.transform = CGAffineTransform(translationX: 0, y: -70)
                self.idTextField.transform = CGAffineTransform(translationX: 0, y: -70)
                self.idLineView.transform = CGAffineTransform(translationX: 0, y: -70)
                self.pwTextField.transform = CGAffineTransform(translationX: 0, y: -70)
                self.pwLineView.transform = CGAffineTransform(translationX: 0, y: -70)
            }))
        }
        
    }
    //Textfield 리턴(enter)시 내리기 및 로그인
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == idTextField {
            pwTextField.becomeFirstResponder()
        } else {
            print("end edit")
            pwTextField.resignFirstResponder()
            Log()
            UIView.animate(withDuration: 0.3, animations: ({
                self.idImage.transform = CGAffineTransform(translationX: 0, y: 0)
                self.pwImage.transform = CGAffineTransform(translationX: 0, y: 0)
                self.idTextField.transform = CGAffineTransform(translationX: 0, y: 0)
                self.idLineView.transform = CGAffineTransform(translationX: 0, y: 0)
                self.pwTextField.transform = CGAffineTransform(translationX: 0, y: 0)
                self.pwLineView.transform = CGAffineTransform(translationX: 0, y: 0)
            }))
        }
        return true
    }
}
```


### SecondVC
```swift 
import UIKit

class SecondVC: UIViewController {
    
    
    private let dismissButton = UIButton()
    let idLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(dismissButton)
        view.addSubview(idLabel)
        
        setUI()
    }
    
    private func setUI() {
        
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            idLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            idLabel.widthAnchor.constraint(equalToConstant: 220),
            idLabel.heightAnchor.constraint(equalToConstant: 110)
        ])
        
        
        idLabel.font = .systemFont(ofSize: 40)
        idLabel.textAlignment = .center
        idLabel.textColor = .systemBlue
        idLabel.text = UserDefaults.standard.string(forKey: "inputID")
        
        
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            dismissButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            dismissButton.widthAnchor.constraint(equalToConstant: 200),
            dismissButton.heightAnchor.constraint(equalToConstant: 90)
        ])
        
        dismissButton.backgroundColor = .systemBlue
        dismissButton.setTitle("Sign Out", for: .normal)
        dismissButton.setTitleColor(.black, for: .normal)
        dismissButton.titleLabel?.font = .systemFont(ofSize: 35)
        dismissButton.layer.cornerRadius = 12
        dismissButton.addTarget(self, action: #selector(dismissA), for: .touchUpInside)
        
    }
    
    @objc private func dismissA() {
        UserDefaults.standard.removeObject(forKey: "inputID")
        //        dismiss(animated: true)
        
        if #available(iOS 13.0, *) {
            
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                let window = UIWindow(windowScene: windowScene)
                let rootVC = LogInVC()
                window.rootViewController = rootVC
                
                let sceneDelegate = windowScene.delegate as? SceneDelegate
                sceneDelegate?.window = window
                window.makeKeyAndVisible()
            } else {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let window = UIWindow(frame: UIScreen.main.bounds)
                window.rootViewController = LogInVC()
                window.makeKeyAndVisible()
                appDelegate.window = window
            }
            
        }
        
    }
}

```

