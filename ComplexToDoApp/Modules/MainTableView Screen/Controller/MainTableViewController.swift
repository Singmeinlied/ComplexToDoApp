//
//  MainTableViewController.swift
//  ComplexToDoApp
//
//  Created by Abai Kush on 14/7/22.
//

import UIKit

class MainTableViewController: UIViewController{
    
    
    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var createTaskButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topBar.clipsToBounds = true
        topBar.layer.cornerRadius = 22
        topBar.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
      
        mainTableView.dataSource = self
        mainTableView.delegate = self
        
        createTaskButton.layer.cornerRadius = createTaskButton.frame.size.height / 2
        createTaskButton.layer.masksToBounds = true
        
    }
}

extension MainTableViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell", for: indexPath) as! MainTVCell
        
        cell.mainLabel.text = "Task #\(indexPath.row + 1)"
        cell.dateLabel.text = "Hui"
        cell.taskName.text = "Task #\(indexPath.row + 1)"
        return cell
    }
}
