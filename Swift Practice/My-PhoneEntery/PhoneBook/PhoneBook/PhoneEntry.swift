// swift file
//  PhoneEntry.swift
//  PhoneBook
//
//  Created by Hossam Farfour on 15/10/2022.
//

import UIKit

class phoneEntry: NSObject, NSCoding {
    
    func encode(with coder: NSCoder) {
        // storing data with ket words
        coder.encode(name, forKey: propertyKey.name)
        coder.encode(phoneNumber, forKey: propertyKey.phoneNumber)
        coder.encode(photo, forKey: propertyKey.photo)

    }
    // second init
    required convenience init?(coder: NSCoder) {
        // make sure that we can decode information, otherwise the initailizer should fail
        guard let name = coder.decodeObject(forKey: propertyKey .name) as? String
        else {
            print("enable to decode the phone entry")
            return nil
        }
        
        guard let phoneNumber = coder.decodeObject(forKey: propertyKey .phoneNumber) as? String
        else {
            print("enable to decode the phone entry")
            return nil
        }
        let photo = coder.decodeObject(forKey: propertyKey.photo) as? UIImage
        
        // call the main init
        self.init(name: name, phoneNumber: phoneNumber, photo: photo)
    }
    // to allow us to vave data and coding
    
  init?(name: String, phoneNumber: String, photo: UIImage?) {
      if name .isEmpty || phoneNumber.isEmpty {
          return nil
      }
        self.name = name
        self.phoneNumber = phoneNumber
        self.photo = photo
    }
var name: String
var phoneNumber: String
var photo: UIImage?
    
    // make data saveable
    struct propertyKey {
        static let name = "name"
        static let phoneNumber = "phoneNumber"
        static let photo = "photo"
    }
    //place to keep data
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    
    // go to that location and add folder
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("phoneEntries")
}
