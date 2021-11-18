//
//  ViewController.swift
//  veriSaklama
//
//  Created by Ertuğrul Kulaber on 30.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birtTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birtLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userName = UserDefaults.standard.object(forKey: "ADİM")
        let userBirtday = UserDefaults.standard.object(forKey: "DOGUM")
        
        if let newName = userName  as? String {
            nameLabel.text = newName
        }
        if let newBirtday = userBirtday as? String {
            birtLabel.text = newBirtday
        }
        }
       @IBAction func saveButton(_ sender: Any) {
        
           UserDefaults.standard.set(nameTextField.text!, forKey: "ADİM")
           UserDefaults.standard.set(birtTextField.text!, forKey: "DOGUM")
        nameLabel.text = nameTextField.text
        birtLabel.text = String(birtTextField.text!)
        }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let userName = UserDefaults.standard.object(forKey: "ADİM")
        let userBirtday = UserDefaults.standard.object(forKey: "DOGUM")
        
        if (userName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "ADİM")
            nameLabel.text = "Name"
        }
        if (userBirtday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "DOGUM")
            birtLabel.text = "Birtday"
        }
    }
}

