//
// ExpenseTracker.swift
//  ExpenseTracker
//
//  Created by Hossam Farfour on 20/03/2022.
//

import UIKit

class ExpenseTracker :NSObject,NSCoding
{
    func encode(with coder: NSCoder) {
        coder.encode(name , forKey: PropertyKey.name)
        coder.encode(amount , forKey: PropertyKey.amount)
        coder.encode(photo , forKey: PropertyKey.photo)
        coder.encode(paidswitch , forKey: PropertyKey.paidswitch)
        coder.encode(switchVAT , forKey: PropertyKey.switchVAT)
        coder.encode(datePicker , forKey: PropertyKey.datePicker)
        coder.encode(letterPicker , forKey: PropertyKey.letterPicker)
        coder.encode(dateadded , forKey: PropertyKey.dateadded)
}
    
    required convenience init?(coder : NSCoder)
    
    {
        // make sure we can decode the name , otherwise this initialiser should fail
        guard let name = coder.decodeObject(forKey: PropertyKey.name)as? String
        else
        {
            print ("unable to decode the phono entry")
            return nil
        }
        
        guard let amount = coder.decodeObject(forKey: PropertyKey.amount)as? String
        else
        {
            print ("unable to decode the amount entry")
            return nil
        }
        
        let photo = coder.decodeObject(forKey: PropertyKey.photo) as? UIImage
        // call main initilaiser
      

       
        guard let datePicker = coder.decodeObject(forKey: PropertyKey.datePicker)as? Date
        else
        {
            print ("unable to decode the datePicker entry")
            return nil
        }
        
        guard let dateadded = coder.decodeObject(forKey: PropertyKey.dateadded)as? String
        else
        {
            print ("unable to decode the dateadded entry")
            return nil
        }
        
        guard let letterPicker = coder.decodeObject(forKey: PropertyKey.letterPicker)as? String
        else
        {
            print ("unable to decode the letterPicker entry")
            return nil
        }
        
        let paidswitch = coder.decodeBool(forKey: PropertyKey.paidswitch)as Bool
        let switchVAT = coder.decodeBool(forKey: PropertyKey.switchVAT)as Bool
        
        self.init(name:name, amount: amount, photo: photo, paidswitch: paidswitch, switchVAT: switchVAT, datePicker: datePicker, letterPicker: letterPicker, dateadded: dateadded)
         }
    
    var name : String
    var amount : String
    var photo : UIImage?
    var paidswitch : Bool
    var switchVAT:Bool
    var datePicker:Date
    var letterPicker:String
    var dateadded:String
    
    init? (name:String ,amount:String,photo:UIImage?,paidswitch: Bool,switchVAT:Bool,datePicker:Date,letterPicker:String,dateadded:String)
   {
     //check for a vaild name and number , fail if it is not!
        if(name.isEmpty || amount.isEmpty)
        {
            return nil
        }
        self.name=name
        self.amount=amount
        self.photo=photo
        self.switchVAT=switchVAT
        self.paidswitch = paidswitch
        self.datePicker=datePicker
        self.letterPicker=letterPicker
        self.dateadded=dateadded
   }
    
    
    // to make data saveable
    struct PropertyKey
    {
        static let name = "name"
        static let amount = "amount"
        static let photo = "photo"
        static let paidswitch = "paidswitch"
        static let switchVAT = "switchVAT"
        static let datePicker = "datePicker"
        static let letterPicker = "letterPicker"
        static let dateadded = "dateadded"
        
    }
    
    
     //path to data
     static let DocumentDirectory = FileManager().urls(for:.documentDirectory, in:.userDomainMask).first!
     //go to location and add folder
     static let ArchiveURL = DocumentDirectory.appendingPathComponent("ExpenseTracker")
    
   
}
