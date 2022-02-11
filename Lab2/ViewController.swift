//
//  ViewController.swift
//  Lab2
//
//  Created by user203147 on 2/5/22.
//
// Group Members: Neha Vishwakarma, Kamalpreet kaur, Hemil Tanakhia, Dhrupal Desai

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Setting label text to blank when the view loads
        status.text = " "
        
        //setting delegates for return key
        inputFirstName.delegate = self
        inputLastName.delegate = self
        inputAge.delegate = self
        inputCountry.delegate = self
        textViewField.isUserInteractionEnabled = false
    }
    
   // hiding the keyboard when user clicks outside the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Hiding keypoard on press return.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    // declaring outlet variables
    @IBOutlet weak var inputFirstName: UITextField!
    
    @IBOutlet weak var inputLastName: UITextField!
    @IBOutlet weak var inputCountry: UITextField!
    
    @IBOutlet weak var inputAge: UITextField!
    
    @IBOutlet weak var textViewField: UITextView!
    
    @IBOutlet weak var status: UILabel!

    var fullName = " "
    // function to add the user data and display in the text box
    @IBAction func add(_ sender: Any) {
        fullName = inputFirstName.text! + " " + inputLastName.text!
        
        textViewField.text = "FullName: " + fullName + "\n"
        textViewField.text += "Country: " + inputCountry.text! + "\n"
        textViewField.text += "Age: " + inputAge.text! + "\n"
        
    }
    
    // function to update the status message on the label when submit is clicked
    @IBAction func submit(_ sender: Any) {
        // checking if all the fields are filled by calling checkstatus function
        let statusVal:Bool = checkStatus();
        
        if(statusVal){
            status.text = "Submitted sucessfully"
        }
        else{
            status.text = "Complete the missing info!"
        }
    }
    // function to check if all the fields are filled
    func checkStatus() -> Bool {
        
        if( inputFirstName.text == "" || inputLastName.text == "" || inputAge.text == "" || inputCountry.text == "") {
            return false
        }
        else {
            return true
        }
        
    }
    // function to clear all the fields
    @IBAction func clear(_ sender: Any) {
        inputFirstName.text = ""
        inputLastName.text = ""
        inputCountry.text = ""
        inputAge.text = ""
        textViewField.text = ""
        status.text = ""
    }
}

