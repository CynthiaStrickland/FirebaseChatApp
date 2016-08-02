//
//  AppDelegate.swift
//  FirebaseChatApp
//
//  Created by Cynthia Whitlatch on 7/7/16.
//  Copyright © 2016 Cynthia Whitlatch. All rights reserved.
//

import UIKit
import Firebase

let ref = FIRDatabase.database().reference()


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        FIRApp.configure()
        FIRDatabase.database().persistenceEnabled = true
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
        
        window?.rootViewController = UINavigationController(rootViewController: MessagesController())
        return true
    }

}

