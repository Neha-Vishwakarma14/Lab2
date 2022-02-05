//
//  ViewController.swift
//  Lab2
//
//  Created by user203147 on 2/5/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ inputLastName: UITextField) -> Bool {
        inputLastName.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ inputLastName: UITextField) -> Bool {
        inputLastName.resignFirstResponder()
        return true
    }
    @IBOutlet weak var inputFirstName: UITextField!
    
    @IBOutlet weak var inputLastName: UITextField!
    @IBOutlet weak var inputCountry: UITextField!
    
    @IBOutlet weak var inputAge: UITextField!
    
    @IBOutlet weak var textViewField: UITextView!
    
    @IBOutlet weak var status: UILabel!
    var fullName = " "
    @IBAction func add(_ sender: Any) {
        fullName = inputFirstName.text! + inputLastName.text!
        
        textViewField.text = "FullName: " + fullName + "\n"
        textViewField.text = "Country: " + inputCountry.text! + "\n"
        textViewField.text = "Age: " + inputAge.text! + "\n"
        
    }
    @IBAction func submit(_ sender: Any) {
        let statusVal:Bool = checkStatus();
        if(statusVal){
            status.text = "Submitted sucessfully"
        }
        else{
            status.text = "All the fields are Mandatory!"
        }
    }
    func checkStatus() -> Bool {
        
        if( inputFirstName.text == "" || inputLastName.text == "" || inputAge.text == "" || inputCountry.text == "") {
            return false
        }
        else {
            return true
        }
        
    }
    @IBAction func clear(_ sender: Any) {
        inputFirstName.text = ""
        inputLastName.text = ""
        inputCountry.text = ""
        inputAge.text = ""
        textViewField.text = ""
    }
}

