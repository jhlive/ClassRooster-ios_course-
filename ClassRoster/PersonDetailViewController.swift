//
//  PersonDetailViewController.swift
//  ClassRoster
//
//  Created by René Alfredo García Hernández on 3/1/15.
//  Copyright (c) 2015 ragar90. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    var selectedPerson = Person()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedPerson.firstName + " Details"
        // Do any additional setup after loading the view.
        self.firstNameTextField.delegate = self
        self.lastNameTextField.delegate = self
        self.firstNameTextField.text = selectedPerson.firstName
        self.lastNameTextField.text  = selectedPerson.lastName
        if self.selectedPerson.image != nil{
            self.imageView.image = self.selectedPerson.image
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func savePersonChangesBtn(sender: AnyObject) {
        self.selectedPerson.firstName = self.firstNameTextField.text
        self.selectedPerson.lastName = self.lastNameTextField.text
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    @IBAction func takePictureBtnPressed(sender: AnyObject) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
        } else {
            imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        }
        self.presentViewController(imagePickerController, animated: true, completion: nil)
    }

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        let image = info[UIImagePickerControllerOriginalImage] as UIImage
        self.imageView.image = image
        self.selectedPerson.image = image
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }

}
