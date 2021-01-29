//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Salim Uzun on 29.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthdayField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
    }


    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayField.text!, forKey: "birthday")
        
        nameLabel.text = "Name: \(nameField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayField.text!)"
        
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
        
    }
}

