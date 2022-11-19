//
//  AddNewAnimalViewController.swift
//  ZooManagementApp
//
//  Created by Hasan Esat Tozlu on 18.11.2022.
//

import UIKit

class AddNewAnimalViewController: UIViewController {

    var zoo: Zoo?
    @IBOutlet weak var animalBreedTextField: UITextField!
    @IBOutlet weak var waterConsumptionTextField: UITextField!
    @IBOutlet weak var keeperTextField: UITextField!
    @IBOutlet weak var countTextField: UITextField!
    @IBOutlet weak var createAnimalButton: UIButton!
    @IBOutlet weak var increaseCountButton: UIButton!
    var selectedAnimal: Animal?
    var selectedKeeper: ZooKeeper?
    var animalArray = Animals.animalArray
    
    var keeperArray: [ZooKeeper] {
        if let zoo = zoo {
            return zoo.keepers ?? [ZooKeeper]()
        }
        return [ZooKeeper]()
    }
    
    var animalsInZoo: [Animal] {
        if let zoo = zoo {
            guard let animals = zoo.animals else {
                return [Animal]()
            }
            return animals
        }
        return [Animal]()
    }
    
    var animalBreedPickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.tag = 0
        return picker
    }()
    
    var keeperPickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.tag = 1
        return picker
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurePickers()
        configureTextFields()
        hideKeyboardWhenTappedAround()
        navigationController?.navigationBar.isHidden = false
        waterConsumptionTextField.isEnabled = false
    }
    
    func configurePickers() {
        animalBreedPickerView.delegate      = self
        animalBreedPickerView.dataSource    = self
        keeperPickerView.delegate           = self
        keeperPickerView.dataSource         = self
    }
    
    func configureTextFields() {
        animalBreedTextField.inputView = animalBreedPickerView
        keeperTextField.inputView = keeperPickerView
    }
    
    @IBAction func createAnimalButtonClicked(_ sender: Any) {
        
        guard let breed = animalBreedTextField.text, breed != "",
              let consumption = waterConsumptionTextField.text, consumption != "",
              let keeper = keeperTextField.text, keeper != "",
              let count = countTextField.text, count != ""
        else {
            alert(titleInput: "Alert", messageInput: "Please make sure you fill in the blanks.")
            return
        }
        
        guard let selectedAnimal = selectedAnimal,
              let selectedKeeper = selectedKeeper,
              let countInt = Int(count)
        else { return }
        
        zoo?.getNewAnimal(animalBreed: selectedAnimal.animalBreed, waterConsumption: selectedAnimal.waterConsumption, sound: selectedAnimal.sound, keeper: selectedKeeper, count: countInt, image: selectedAnimal.image) { error in
            if let error = error {
                alert(titleInput: "Alert", messageInput: error)
            } else {
                navigationController?.popViewController(animated: true)
            }
        }
    }
    
    @IBAction func increaseAnimalCountButtonClicked(_ sender: Any) {
        guard let breed = animalBreedTextField.text, breed != "",
              let consumption = waterConsumptionTextField.text, consumption != "",
              let keeper = keeperTextField.text, keeper != "",
              let count = countTextField.text, count != ""
        else {
            alert(titleInput: "Alert", messageInput: "Please make sure you fill in the blanks.")
            return
        }
        
        guard let selectedAnimal = selectedAnimal,
              let _ = selectedKeeper,
              let countInt = Int(count)
        else { return }
        
        zoo?.addToExisting(animalBreed: selectedAnimal.animalBreed, count: countInt, completion: { error in
            if let error = error {
                alert(titleInput: "Alert", messageInput: error)
            } else {
                navigationController?.popViewController(animated: true)
            }
        })
    }
    
}

extension AddNewAnimalViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return animalArray.count
        } else {
            return keeperArray.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return animalArray[row].animalBreed
        } else {
            return keeperArray[row].name
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView.tag == 0 {
            animalBreedTextField.text = animalArray[row].animalBreed
            animalBreedTextField.resignFirstResponder()
            waterConsumptionTextField.text = String(animalArray[row].waterConsumption.formattedWithSeparator)
            selectedAnimal = animalArray[row]
            
            animalsInZoo.forEach{
                if $0.animalBreed == selectedAnimal?.animalBreed {
                    keeperTextField.text = $0.keeper?.name
                    keeperTextField.isEnabled = false
                    selectedKeeper = $0.keeper
                } else {
                    keeperTextField.isEnabled = true
                    keeperTextField.text = ""
                }
            }
            
        } else {
            keeperTextField.text = keeperArray[row].name
            keeperTextField.resignFirstResponder()
            selectedKeeper = keeperArray[row]
        }
    }
}
