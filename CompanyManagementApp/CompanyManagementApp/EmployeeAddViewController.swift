//
//  EmployeeAddViewController.swift
//  CompanyManagementApp
//
//  Created by Hasan Esat Tozlu on 16.11.2022.
//

import UIKit

class EmployeeAddViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var maritalStatusTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var salaryLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateSalaryButtonClicked(_ sender: Any) {
    }
    
    @IBAction func createEmployeeButtonClicked(_ sender: Any) {
    }
    
}
