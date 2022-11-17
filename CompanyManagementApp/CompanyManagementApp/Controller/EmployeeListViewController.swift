//
//  EmployeeListViewController.swift
//  CompanyManagementApp
//
//  Created by Hasan Esat Tozlu on 16.11.2022.
//

import UIKit

class EmployeeListViewController: UIViewController {

    @IBOutlet weak var employeeListTableView: UITableView!
    var company: Company?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        employeeListTableView.delegate      = self
        employeeListTableView.dataSource    = self
        navigationController?.navigationBar.isHidden = false
        
        employeeListTableView.register(UINib(nibName: "EmployeeListTableViewCell", bundle: nil), forCellReuseIdentifier: "employeeCell")
    }
}


extension EmployeeListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return company?.employees?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = employeeListTableView.dequeueReusableCell(withIdentifier: "employeeCell", for: indexPath) as? EmployeeListTableViewCell else { return UITableViewCell() }
        guard let employee = company?.employees?[indexPath.row] else { return UITableViewCell() }
        cell.salaryLabel.text          = "\(employee.salary.formattedWithSeparator)₺"
        cell.ageLabel.text             = "\(employee.age)"
        cell.maritalStatusLabel.text   = "\(employee.maritalStatus)"
        cell.idLabel.text              = "\(employee.id)"
        cell.nameLabel.text            = "\(employee.name)"
        cell.titleLabel.text           = "\(employee.title)"
        return cell
    }
    
    
}
