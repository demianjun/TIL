//
//  AppDelegate.swift
//  191125_viewDIdLoad
//
//  Created by Demian on 2019/11/25.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // 버젼에 관계없이 무조건 실행됨 -> 제일 먼저 호출되는 메소드
       
        
        if #available(iOS 13.0, *) {
            
        } else {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white // 백그라운드 색깔지정시 사용
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
         // iOS13에서 사용시엔 불필요 -> else코드 필요
        }
        
        return true
    }

}

