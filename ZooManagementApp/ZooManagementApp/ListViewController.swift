//
//  ListViewController.swift
//  ZooManagementApp
//
//  Created by Hasan Esat Tozlu on 18.11.2022.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var listSegmentedControl: UISegmentedControl!
    @IBOutlet weak var listTableView: UITableView!
    var zoo: Zoo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = false
    }
    

}
