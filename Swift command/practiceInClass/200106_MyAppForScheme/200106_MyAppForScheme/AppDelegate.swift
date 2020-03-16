//
//  AppDelegate.swift
//  200106_MyAppForScheme
//
//  Created by Demian on 2020/01/06.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
   
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
      
     print("sourceApplication :", options[.sourceApplication] ?? "")
     print("app :", app)
     print("url :", url)
      
     if let scheme = url.scheme {
      print("scheme :", scheme)
     }
     if let host = url.host {
      print("host :", host)
     }
     if let query = url.query {
      print("query :", query)
     }
     return true
     }
    
    

}

