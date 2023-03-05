//
//  phoneEntry.swift
//  PhoneEntry
//
//  Created by Hossam Farfour on 01/03/2022.
//

import UIKit

class phoneEntry:NSObject,NSCoding
{
    func encode(with coder: NSCoder) {
        coder.encode(name , forKey: PropertyKey.name)
        coder.encode(phoneNo , forKey: PropertyKey.phoneNo)
        coder.encode(photo , forKey: PropertyKey.photo)
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
        
        guard let phoneNo = coder.decodeObject(forKey: PropertyKey.phoneNo)as? String
        else
        {
            print ("unable to decode the phono entry")
            return nil
        }
        
        let photo = coder.decodeObject(forKey: PropertyKey.photo) as? UIImage
        
        // call main initilaiser
        self.init(name:name,phoneNo:phoneNo,photo:photo)
        
    }
    
    var name : String
    var phoneNo : String
    var photo : UIImage?
    
    init? (name:String ,phoneNo:String,photo:UIImage?)
    {
     //check for a vaild name and number , fail if it is not!
        if(name.isEmpty || phoneNo.isEmpty)
        {
            return nil
        }
        self.name=name
        self.phoneNo=phoneNo
        self.photo=photo
    }
    
    
    // to make data saveable
    struct PropertyKey
    {
       static let name = "name"
        static let phoneNo = "phoneNo"
        static let photo = "photo"
    }
    
    
    //path to data
    static let DocumentDirectory = FileManager().urls(for:.documentDirectory, in:.userDomainMask).first!
 //go to location and add folder
    static let ArchiveURL = DocumentDirectory.appendingPathComponent("phoneEntries")
    
   
}
