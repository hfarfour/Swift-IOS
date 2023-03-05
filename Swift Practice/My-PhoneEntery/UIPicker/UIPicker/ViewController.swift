//
//  ViewController.swift
//  UIPicker
//
//  Created by Hossam Farfour on 26/03/2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource
{
    
    @IBOutlet weak var LetterPicker: UIPickerView!
    
    let pickerDateSource = ["A","B","C","D","E","F"]
    // UIPicker dateSourc functions
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDateSource.count
    }
    
// for date
    let dateFormatter = DateFormatter()
    
    @IBAction func getPickerValueButton(_ sender: UIButton)
    {
        print (pickerDateSource[LetterPicker.selectedRow(inComponent: 0)])
    }
    
    @IBOutlet weak var dataPicker: UIDatePicker!
    @IBAction func dateSet(_ sender: UIDatePicker)
    {
        print ("you selected \(sender.date)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    // time zoon for us
        dateFormatter.locale = Locale(identifier: "en_GB")
        dateFormatter.setLocalizedDateFormatFromTemplate("MMMMd")
       
    }

    // func for title in the (a,b,c,d,e,f,)
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDateSource[row]
    }
    // when person selcet a value
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        print ("you selected a value! \(pickerDateSource[row])")
    }
    
    @IBAction func gatDateButton(_ sender: UIButton)
    {
        //print ("date selected is \(dataPicker.date)")
        print (dateFormatter.string(from: dataPicker.date))
    }
    
}

