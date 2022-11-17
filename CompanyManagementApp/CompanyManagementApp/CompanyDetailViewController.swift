//
//  CompanyDetailViewController.swift
//  CompanyManagementApp
//
//  Created by Hasan Esat Tozlu on 16.11.2022.
//

import UIKit

class CompanyDetailViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var establishmentYearLabel: UILabel!
    @IBOutlet weak var budgetLabel: UILabel!
    @IBOutlet weak var employeeCountLabel: UILabel!
    @IBOutlet weak var totalSalariesLabel: UILabel!
    var company: Company?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureLabels()
    }
    
    @IBAction func paySalariesButtonClicked(_ sender: Any) {
        guard let company = company else { return }
        company.paySalary(completion: { message in
            alert(titleInput: "Alert", messageInput: message)
            budgetLabel.text = "\(company.budget)₺"
        })
    }
    
    @IBAction func addNewEmployeeButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toAddNewEmployee", sender: nil)
    }
    
    @IBAction func showEmployeeListButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "toEmployeeList", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAddNewEmployee" {
            let employeeAddVC = segue.destination as? EmployeeAddViewController
            employeeAddVC?.company = company
        }
        
        if segue.identifier == "toEmployeeList" {
            let employeeListVC = segue.destination as? EmployeeListViewController
            employeeListVC?.company = company
        }
    }
    
    
    func configureLabels() {
        if let company = company {
            logoImageView.image = company.logo
            companyNameLabel.text = company.companyName
            establishmentYearLabel.text = "\(company.establishmentYear)"
            budgetLabel.text = "\(company.budget)₺"
            employeeCountLabel.text = "\(company.employees?.count ?? 0)"
            totalSalariesLabel.text = "\(company.totalSalary)₺"
        }
    }
    
    
    
}


