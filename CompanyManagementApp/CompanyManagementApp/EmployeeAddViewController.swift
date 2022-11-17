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
    var company: Company?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func calculateSalaryButtonClicked(_ sender: Any) {
        guard let name = nameTextField.text,
              let title = titleTextField.text?.lowercased(),
              let age = ageTextField.text,
              var maritalStatus = maritalStatusTextField.text?.lowercased(),
              let id = idTextField.text
        else { return }
        
        var maritalStatusEnum = MaritalStatus.single
        var titleEnum = EmployeeType.junior
        
        switch maritalStatus {
        case "married" :
            maritalStatusEnum = MaritalStatus.married
        case "single" :
            maritalStatusEnum = MaritalStatus.single
        default:
            alert(titleInput: "Alert", messageInput: "Please check marital status")
        }
        
        switch title {
        case "junior" :
            titleEnum = EmployeeType.junior
        case "lead" :
            titleEnum = EmployeeType.lead
        case "manager" :
            titleEnum = EmployeeType.manager
        case "midLevel" :
            titleEnum = EmployeeType.midLevel
        case "senior" :
            titleEnum = EmployeeType.senior
        default:
            alert(titleInput: "Alert", messageInput: "Please check employee title")
        }
        
        if let ageInt = Int(age), let idInt = Int(id) {
            company?.hireEmployee(name: name, age: ageInt, maritalStatus: maritalStatusEnum, title: titleEnum, employeeId: idInt) { employee, error in
                if let error = error {
                    alert(titleInput: "Alert", messageInput: error)
                } else {
                    guard let employee = employee else { return }
                    salaryLabel.text = "\(employee.salary)₺"
                }
            }
            
                
        } else {
            return
        }
        
    }
    
    @IBAction func createEmployeeButtonClicked(_ sender: Any) {
    }
    
}
