//
//  ViewControllerExtention.swift
//  CompanyManagementApp
//
//  Created by Hasan Esat Tozlu on 16.11.2022.
//

import UIKit

extension UIViewController {
    func alert(titleInput : String, messageInput : String?){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let cancelButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(cancelButton)
        self.present(alert, animated: true, completion: nil)
    }
}
