//
//  AppDelegate.swift
//  SimpleCoordinator
//
//  Created by Evgen on 22/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let naviContr = UINavigationController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = naviContr
        window?.makeKeyAndVisible()
        
        coordinator = AppCoordinator(navigationController: naviContr)
        coordinator?.StartWhite()
        


        return true
    }


}

