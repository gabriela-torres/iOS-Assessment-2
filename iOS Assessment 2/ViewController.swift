//
//  ViewController.swift
//  iOS Assessment 2
//
//  Created by Gabriela Torres on 10/25/18.
//  Copyright © 2018 Gabriela Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var newPerson: Person?
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var SubmitButton: UIButton!
    
    @IBAction func SubmitButtonTapped(_ sender: Any) {
        guard
            let firstName = FirstNameTextField.text, !firstName.isEmpty,
            let lastName = LastNameTextField.text, !lastName.isEmpty,
            let email = EmailTextField.text, !email.isEmpty
            
                else {
                    
                let errorAlert = UIAlertController(title: "Sorry...", message: "Please fill out all spaces.", preferredStyle: UIAlertController.Style.alert)
                let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {UIAlertAction in}
                errorAlert.addAction(dismissAction)
                self.present(errorAlert, animated: true, completion: nil)
                return
        }
        let newPerson = Person(firstName: FirstNameTextField.text!, lastName: LastNameTextField.text!, email: EmailTextField.text!)
        let submitAlert = UIAlertController(title: "Greetings", message: "Hello \(newPerson.firstName) \(newPerson.lastName)! Your email address: \(newPerson.email)", preferredStyle: UIAlertController.Style.alert)
        let okayAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {UIAlertAction in}
        submitAlert.addAction(okayAction)
        self.present(submitAlert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

