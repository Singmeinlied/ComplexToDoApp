//
//  MainTVCell.swift
//  ComplexToDoApp
//
//  Created by Abai Kush on 14/7/22.
//

import UIKit

class MainTVCell: UITableViewCell {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var taskView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var taskName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       setup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(){
        mainView.layer.cornerRadius = 22
        mainView.layer.masksToBounds = true
        
        taskView.layer.cornerRadius = 16
        taskView.layer.masksToBounds = true
    }

}
