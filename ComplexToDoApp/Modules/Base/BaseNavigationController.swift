//
//  BaseNavigationController.swift
//  ComplexToDoApp
//
//  Created by Abai Kush on 14/7/22.
//

import UIKit

//mainCell

class BaseNavigationController: UINavigationController{
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden = true
    }
}
