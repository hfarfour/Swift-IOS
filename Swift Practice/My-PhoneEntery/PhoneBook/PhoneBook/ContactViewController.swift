//
//  ViewController.swift
//  PhoneBook
//
//  Created by Hossam Farfour on 15/10/2022.
//

import UIKit

class ContactViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    // var to store details
    var contect: phoneEntry?
 
    @IBOutlet weak var ContactnameTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBAction func CancelAddContact(_ sender: UIBarButtonItem) {
        let isPresentinginAddContactMode = presentingViewController is UINavigationController
            if isPresentinginAddContactMode {
        dismiss(animated: true , completion: nil)
        } else {
            //cacel back to the table view
            if let owningNavigationController = navigationController {
                owningNavigationController.popViewController(animated: true)
            }
        }
        
    }
    
    @IBOutlet weak var ContactNameLable: UILabel!
    @IBOutlet weak var ContactPhotoImage: UIImageView!
    @IBOutlet weak var ContactPhonenumberTextFiled: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let contect = contect {
            ContactnameTextField.text = contect.name
            ContactPhotoImage.image = contect.photo
            ContactNameLable.text = contect.name
            ContactPhonenumberTextFiled.text = contect.phoneNumber
        }
        
    }
  
    @IBAction func selectPhotoFromLibrary(_ sender: UITapGestureRecognizer) {
        // hide the keyboard
        ContactnameTextField.resignFirstResponder()
            //use UI ImagePicker Controller allows us to select a photo from library
        let ImagePickerContrller = UIImagePickerController()
        // aonly allow photo from library
        ImagePickerContrller.sourceType = .photoLibrary
        ImagePickerContrller.delegate = self
        present(ImagePickerContrller, animated: true, completion: nil)
    }
    // all to do with save button
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem , button == saveButton
        else {
            return
        }
        // this code runs when they click save.
        let name = ContactnameTextField.text ?? ""
        let number = ContactPhonenumberTextFiled.text ?? ""
        let photo = ContactPhotoImage .image
        
        contect = phoneEntry(name: name, phoneNumber: number, photo: photo)
    }
    // to do with picking image
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true , completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selctedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
                else
        {
            print("error loading selcted image")
            dismiss(animated: true , completion: nil)
            return
        }
        // show selcetd image
        ContactPhotoImage.image = selctedImage
        dismiss(animated: true , completion: nil)
        
    }
}

