//
//  PersonDetailViewController.swift
//  ClassRoster
//
//  Created by René Alfredo García Hernández on 3/1/15.
//  Copyright (c) 2015 ragar90. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    var selectedPerson = Person()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedPerson.firstName + " Details"
        // Do any additional setup after loading the view.
        self.firstNameTextField.delegate = self
        self.lastNameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
