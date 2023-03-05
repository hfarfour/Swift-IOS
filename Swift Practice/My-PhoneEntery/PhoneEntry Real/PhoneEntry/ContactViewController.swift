//
//  ViewController.swift
//  PhoneEntry
//
//  Created by Hossam Farfour on 01/03/2022.
//

import UIKit

class ContactViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate
{

    var contact:phoneEntry?
    
    @IBOutlet weak var contactPhotoimage: UIImageView!
    @IBOutlet weak var contactNameTextField: UITextField!
    @IBOutlet weak var contactNameLable: UILabel!
   
    @IBOutlet weak var contactNumbertextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem! 
    
    @IBAction func selectImagefromPhotoLibrary(_ sender: UITapGestureRecognizer)
    {
        // hide the keYboRD
        contactNameTextField.resignFirstResponder()

        // USE UI ImagePicker Controller allows you to selsect a photo from the libarary
        let imagePickerController = UIImagePickerController()
        
        // only allows photo from the Libaray
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
    @IBAction func cancelAddContact(_ sender: UIBarButtonItem)
    {
        let isPresntinginAddContactMode = presentingViewController is UINavigationController
        if isPresntinginAddContactMode
        {
        dismiss(animated: true, completion: nil)
        }else
        {
            // cancel back to table view
            if let owningNavigationController = navigationController
            {
            owningNavigationController.popViewController(animated: true)
            }
        }
    }
    
    
    //add a variable to store the contact details
    //var contact:phoneEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let contact = contact {
            contactNameTextField.text = contact.name
            contactPhotoimage.image = contact.photo
            contactNameLable.text=contact.name
            contactNumbertextField.text = contact.phoneNo
        }
    }
    
    override func prepare (for segue:UIStoryboardSegue, sender:Any?)
    {
     //super.prepare(for: segue, sender: sender)
     // need to check save button was prssed or it was the cancel button
     guard let button = sender as? UIBarButtonItem, button === saveButton
     else
     {
         return
     }
     
     // save the conttect
    let name = contactNameTextField.text ?? " "
    let number = contactNumbertextField.text ?? " "
    let photo = contactPhotoimage.image
        
    contact = phoneEntry(name: name , phoneNo: number,photo: photo)
    

}
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        else
        {
            print(" error loading selected, dismissing image picker. ")
            dismiss(animated: true, completion: nil)
            return
        }
        // show the selected image
        contactPhotoimage.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
}
