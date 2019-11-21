//
//  AppDelegate.swift
//  practiceInClass
//
//  Created by Demian on 2019/11/21.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

@UIApplicationMain
// Objective-c에서 mian.m을 대신함 -> main함수를 직접 작성할 수 있음


class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    /*
     1. SceneDelegate사용 할 때
      iOS13 미만일 때 (현업이나 개인앱 낼 때)
     -> available 명시, AppDelegate에 window 프러퍼티 추가
     
      iOS13 이상 + SceneDelegate 사용기준 (공부할 때)
     -> AppDelegate & ScenDelegate 무시
     
     2.SceneDelegate 사용하지 않을 때, (AppDelegate만 사용할 때)
     -> SceneDelegate파일 삭제
     -> AppDelegate에서 Scene관련 메서드 삭제
     -> Info.plist에서 Application Scene Mainfest 키ㅣ 삭제
     
      iOS12 이하일때
      iOS13 이상일때
     
      Xcode 10까지는 AppDelegate.swift
      Xcode 11부터는 SceneDelegate.swift
     
     */

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("didFinishLaunchingWithOptions")
        
        return true
    }

    // MARK: UISceneSession Lifecycle

//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }
//
//    func applicationDidBecomeActive(_ application: UIApplication) {
//        print("applicationDidBecomeActive")
//    }
//
//    func applicationWillResignActive(_ application: UIApplication) {
//        print("applicationWillResignActive")
//    }
//
//    func applicationDidEnterBackground(_ application: UIApplication) {
//        print("applicationDidEnterBackground")
//    }
//
//    func applicationWillEnterForeground(_ application: UIApplication) {
//        print("applicationWillEnterForeground")
//    }
//
//    func applicationWillTerminate(_ application: UIApplication) {
//        print("applicationWillTerminate")
//    }
    
//    window = UIWindow(frame: UIScreen.main.bounds)
//    window?.rootViewController = ViewController()
//    window?.makeKeyAndVisible()
    //AppDelegate 버젼
    
}


