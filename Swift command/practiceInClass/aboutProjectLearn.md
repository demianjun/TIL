```swift
1.AppDelegate에서 코드로 작성 시
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = ViewController()
    window?.makeKeyAndVisible()
2. SceneDelegate.swift 에서 코드로 작성 시
guard let windowScene = (scene as? UIWindowScene) else { return }
    window = UIWindow(windowScene: windowScene)
    window?.rootViewController = ViewController()
    window?.makeKeyAndVisible() (edited) 
  
```
    
    



    
 ```swift   
// [ SceneDelegate 사용할 때 ]
// 1. iOS 13 미만일 때 (현업이나 개인앱 낼 때)
//   1) available 명시, AppDelegate에 window 프로퍼티 추가
// 2. iOS 13 이상 + SceneDelegate 사용 기준 (공부할 때)
//   1) AppDelegate랑 SceneDelegate 무시
// [ SceneDelegate 사용하지 않을 때  (AppDelegate만 사용할 때) ]
// 1. SceneDelegate 파일 삭제
// 2. AppDelegate에서 Scene관련 메서드 삭제
// 3. Info.plist에서 Application Scene Manifest 키 삭제
// Xcode 10까지는 AppDelegate.swift가 기본값
// Xcode 11부터 SceneDelegate.swift가 기본값
```