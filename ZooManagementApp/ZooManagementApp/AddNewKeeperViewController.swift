//
//  AddNewKeeperViewController.swift
//  ZooManagementApp
//
//  Created by Hasan Esat Tozlu on 18.11.2022.
//

import UIKit

class AddNewKeeperViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var salaryLabel: UILabel!
    
    var zoo: Zoo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
    }
    
    
    @IBAction func calculateSalaryButtonClicked(_ sender: Any) {
        guard let _     = nameTextField.text,
              let _     = idTextField.text,
              let age   = ageTextField.text
        else {
            alert(titleInput: "Alert", messageInput: "Please make sure you fill in the blanks.")
            return
        }
        
        if let ageInt = Int(age) {
            salaryLabel.text = "\(ZooKeeper.calculateSalary(age: ageInt).formattedWithSeparator)"
        } else {
            alert(titleInput: "Alert", messageInput: "Age should be integer.")
            return
        }
    }
    
    
    @IBAction func createKeeperButtonClicked(_ sender: Any) {
        guard let name = nameTextField.text,
              let id   = idTextField.text,
              let age  = ageTextField.text,
              let idInt  = Int(id),
              let ageInt = Int(age)
        else { return }
        
        zoo?.hireZooKeeper(keeper: .init(name: name, keeperId: idInt, age: ageInt), completion: { error in
            if let error = error {
                alert(titleInput: "Alert", messageInput: error)
            }
        })
        navigationController?.popViewController(animated: true)
    }
}
