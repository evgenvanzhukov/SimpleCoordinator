//
//  RedViewController.swift
//  SimpleCoordinator
//
//  Created by Evgen on 23/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

class RedViewController: UIViewController, CreateAble {

    var coordinator: ICoordinator?
    
    @IBOutlet weak var myView: UIView!
    
    var tapGesture = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Red"
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTaped))
        myView.isUserInteractionEnabled = true
        myView.addGestureRecognizer(tapGesture)
    }
    
    @objc func viewTaped() {
        coordinator?.StartWhite()        
    }

}
