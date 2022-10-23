//
//  AppCoordinator.swift
//  SimpleCoordinator
//
//  Created by Evgen on 23/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

protocol ICoordinator {

    var navigationController: UINavigationController {get  set }

    func StartWhite()
    func StartBlue()
    func StartRed()
}

class AppCoordinator : ICoordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func StartWhite() {
        let vc = WhiteViewController.CreateObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func StartBlue() {
        let vc = BlueViewController.CreateObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func StartRed() {
        let vc = RedViewController.CreateObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    

}
