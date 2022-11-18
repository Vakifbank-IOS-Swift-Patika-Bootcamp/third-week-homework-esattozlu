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
    
    var maritalStatusPickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.tag = 0
        return picker
    }()
    
    var titlePickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.tag = 1
        return picker
    }()
    
    
    var company: Company?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePickers()
        configureTextFields()
        hideKeyboardWhenTappedAround()
        navigationController?.navigationBar.isHidden = false
    }
    
    func configurePickers() {
        titlePickerView.delegate            = self
        titlePickerView.dataSource          = self
        maritalStatusPickerView.delegate    = self
        maritalStatusPickerView.dataSource  = self
    }
    
    func configureTextFields() {
        maritalStatusTextField.inputView = maritalStatusPickerView
        titleTextField.inputView = titlePickerView
    }
    
    @IBAction func calculateSalaryButtonClicked(_ sender: Any) {
        guard let name = nameTextField.text, name != "",
              let title = titleTextField.text, title != "",
              let age = ageTextField.text, age != "",
              let maritalStatus = maritalStatusTextField.text, maritalStatus != "",
              let id = idTextField.text, id != ""
        else {
            alert(titleInput: "Alert", messageInput: "Please make sure you fill in the blanks.")
            return
        }
        
        let titleEnum = EmployeeType(caseString: titleTextField.text!)
        
        if let ageInt = Int(ageTextField.text!) {
            salaryLabel.text = "\(Employee.calculateSalary(age: ageInt, title: titleEnum).formattedWithSeparator)₺"
                
        } else {
            alert(titleInput: "Alert", messageInput: "Age should be integer.")
            return
        }
        
    }
    
    @IBAction func createEmployeeButtonClicked(_ sender: Any) {
        guard let name = nameTextField.text, name != "",
              let title = titleTextField.text, title != "",
              let age = ageTextField.text, age != "",
              let maritalStatus = maritalStatusTextField.text, maritalStatus != "",
              let id = idTextField.text, id != ""
        else {
            alert(titleInput: "Alert", messageInput: "Please make sure you fill in the blanks.")
            return
        }
        
        let maritalStatusEnum = MaritalStatus(caseString: maritalStatus)
        let titleEnum = EmployeeType(caseString: title)
        
        if let idInt = Int(id), let ageInt = Int(age) {
            company?.hireEmployee(name: name, age: ageInt, maritalStatus: maritalStatusEnum, title: titleEnum, employeeId: idInt, completion: { _, error in
                if let error = error {
                    alert(titleInput: "Alert", messageInput: error)
                } else {
                    navigationController?.popToRootViewController(animated: true)
                }
            })
        } else {
            alert(titleInput: "Alert", messageInput: "Age and Id should be integer.")
            return
        }
    }
    
}


extension EmployeeAddViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return MaritalStatus.allCases.count
        } else {
            return EmployeeType.allCases.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return String(describing: MaritalStatus.allCases[row])
        } else {
            return String(describing: EmployeeType.allCases[row])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView.tag == 0 {
            maritalStatusTextField.text = String(describing: MaritalStatus.allCases[row])
            maritalStatusTextField.resignFirstResponder()
        } else {
            titleTextField.text = String(describing: EmployeeType.allCases[row])
            titleTextField.resignFirstResponder()
        }
    }
    
    
}
