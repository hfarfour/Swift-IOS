//
//  ContactViewController.swift
//  ExpenseTracker
//
//  Created by Hossam Farfour on 20/03/2022.
//

import UIKit

class ContactViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate,UIPickerViewDelegate,UIPickerViewDataSource
{
    
    @IBOutlet weak var switchpaid: UISwitch!
    let dateFormatter = DateFormatter()
    @IBOutlet weak var uiPicker: UIPickerView!
    let pickerDateSource = ["Elctricity","Fuel","Gas","phone bill","shpoing","fashion"]

    
    
    @IBOutlet weak var dateadded: UILabel!
    
    //switch VAT
    @IBOutlet weak var VAT: UILabel!
    @IBOutlet weak var switchVAT: UISwitch!
    @IBAction func switchVAT(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            VAT.text = "VAT YES"
        }
        else
        {
            VAT.text = "VAT No"
        }
    }
    
    //switch paid
    @IBOutlet weak var paid: UILabel!

    @IBAction func switchpaid(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            paid.text = "Paid "
        }
        else
        {
           paid.text = "not paid"
        }
        
    }
    
    
    // UIPicker dateSourc functions
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        contactNameTextField.resignFirstResponder()
        return pickerDateSource.count
        
    }
    
    @IBOutlet weak var letterPicker: UIPickerView!
    
    var contact:ExpenseTracker?
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBAction func Dateset(_ sender: UIDatePicker)
    {
        print ("you have selected \(sender.date)")
        
    }
    
    @IBOutlet weak var TakePicture: UIButton!
    @IBOutlet weak var contactPhotoimage: UIImageView!
    @IBOutlet weak var contactNameTextField: UITextField!
    @IBOutlet weak var contactNameLable: UILabel!
    @IBOutlet weak var contactNumbertextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBAction func selectImagefromPhotoLibrary(_ sender: UITapGestureRecognizer)
    {
        // hiding keYboRD
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
        }
        else
        {   // cancel back to table view
            if let owningNavigationController = navigationController
            {
            owningNavigationController.popViewController(animated: true)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // date picker
        dateFormatter.locale = Locale(identifier: "en_GB")
        dateFormatter.setLocalizedDateFormatFromTemplate("MMMMd")
        let dateadd = dateFormatter.string(from:DatePicker.date)
        dateadded.text = dateadd
        // Take picture button
        TakePicture.backgroundColor = .systemBlue
        TakePicture.setTitle("Take Picture", for: .normal)
        TakePicture.setTitleColor(.blue, for:.normal)
        
        //  additional setup after loading the view.
        if let contact = contact
        {
            contactNameTextField.text = contact.name
            contactPhotoimage.image = contact.photo
            contactNameLable.text=contact.name
            contactNumbertextField.text = contact.amount
            switchpaid.isOn = contact.paidswitch
            switchVAT.isOn = contact.switchVAT
            DatePicker.date = contact.datePicker
            dateadded.text = contact.dateadded

            var receiptPicker = pickerDateSource.firstIndex(of: contact.letterPicker)
            if receiptPicker == nil
            {
                receiptPicker = 0
            }
            letterPicker.selectRow(receiptPicker!, inComponent:0,animated:true)
         }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pickerDateSource[row]
    }
    
    // over riding selcted row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        print ("you have selected a value! \(pickerDateSource[row])")
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
     
     // save the dpayment details
    let name = contactNameTextField.text ?? " "
    let number = contactNumbertextField.text ?? " "
    let photo = contactPhotoimage.image
    let switchpaid = switchpaid.isOn
    let switchVAT = switchVAT.isOn
    let datePicker = DatePicker.date
    let letterPicker = pickerDateSource[uiPicker.selectedRow(inComponent: 0)]
    let dateadded = dateadded.text ?? ""
        contact = ExpenseTracker (name: name , amount: number,photo: photo, paidswitch:  switchpaid,switchVAT: switchVAT,datePicker: datePicker,letterPicker: letterPicker, dateadded: dateadded)
    

 }
    
    // Take Picture
    @IBAction func didTapButton()
    {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        present(picker,animated: true)
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        picker.dismiss(animated: true, completion: nil)
        
    }
    
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        
        else
        {
            print(" error loading selected, dismissing image picker. ")
            return
        }
        // showing the selected image
        contactPhotoimage.image = image
        
    }
    
}
