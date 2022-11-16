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
        company?.paySalary(completion: { _ in
            textFieldCheck        })
    }
    
    @IBAction func addNewEmployeeButtonClicked(_ sender: Any) {
    }
    
    @IBAction func showEmployeeListButtonClicked(_ sender: Any) {
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


