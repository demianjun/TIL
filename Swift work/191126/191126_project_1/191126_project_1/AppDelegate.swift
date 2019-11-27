//
//  AppDelegate.swift
//  191126_project_1
//
//  Created by Demian on 2019/11/27.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        
        return true
    }

   


}

