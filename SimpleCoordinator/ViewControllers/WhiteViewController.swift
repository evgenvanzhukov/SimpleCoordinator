//
//  WhiteViewController.swift
//  SimpleCoordinator
//
//  Created by Evgen on 23/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit
import Foundation

class WhiteViewController: UIViewController, CreateAble {

    var coordinator: ICoordinator?
    
    @IBOutlet weak var myView: UIView!
    
    var tapGesture: UITapGestureRecognizer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "White"

        tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTaped))
        myView.addGestureRecognizer(tapGesture!)
    }
    
    @objc func viewTaped() {
        coordinator?.StartBlue()
        print("White Taped")
    }

}
