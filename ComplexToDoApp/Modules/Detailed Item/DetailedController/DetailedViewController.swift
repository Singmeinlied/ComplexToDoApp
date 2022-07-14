//
//  DetailedViewController.swift
//  ComplexToDoApp
//
//  Created by Abai Kush on 14/7/22.
//

import UIKit

class DetailedViewController: UIViewController{
    
    @IBOutlet weak var detailedVCTopBar: UIView!
    @IBOutlet weak var topBarTaskName: UILabel!
    @IBOutlet weak var createdDate: UILabel!
    @IBOutlet weak var mainTaskName: UILabel!
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var laterButtonOutlet: UIButton!
    @IBOutlet weak var doneButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailedVCTopBar.clipsToBounds = true
        detailedVCTopBar.layer.cornerRadius = 22
        detailedVCTopBar.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        laterButtonOutlet.backgroundColor = .clear
        laterButtonOutlet.layer.cornerRadius = laterButtonOutlet.frame.size.height / 2
        laterButtonOutlet.layer.borderWidth = 1
        laterButtonOutlet.layer.borderColor = UIColor.black.cgColor
        
        doneButtonOutlet.layer.cornerRadius = doneButtonOutlet.frame.size.height / 2
        doneButtonOutlet.layer.masksToBounds = true
    }
    @IBAction func backButtonTapped(_ sender: UIButton) {
    }
}

