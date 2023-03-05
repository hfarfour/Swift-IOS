//
//  ContactsTableViewController.swift
//  PhoneEntry
//
//  Created by Hossam Farfour on 01/03/2022.
//

import UIKit

class ContactsTableViewController: UITableViewController,UISearchBarDelegate {

    // define an array to keep the contacts in
    var contactsArray:[phoneEntry]=[]
    
    // Arry for search
    var filteredArray:[phoneEntry]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   // check save contect
        if let savedContacts = loadContacts()
        {
           contactsArray = savedContacts
        }
        else
        {
            // this is the first time the app has launched
            if let contact1=phoneEntry.init(name: "Sam " , phoneNo: "07577021377", photo: nil)
            {
            contactsArray.append(contact1)
            }
        }
        
        //sort alphabatically
        contactsArray.sort(by:{ $0.name.lowercased() < $1.name.lowercased() })
        
       // copy the contactArry into FilterArry for search
        filteredArray = contactsArray
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1   // define the section and rows in code
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredArray.count // define the section and rows in code
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)

        // Configure the cell...
        
        //adding a code to assgin the text of the cell
        cell.textLabel?.text = filteredArray[indexPath.row].name
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let contact =  filteredArray [indexPath.row]
            // Delete the row from the orginal  data source
            filteredArray.remove(at: indexPath.row)
            // this is bad
           // contactsArray.remove(at: indexPath.row)
            //instead search for the contact to remove it
            for i in indexPath.row ..< contactsArray.count
            {
                if (contactsArray[i].name==contact.name && contactsArray[i].phoneNo==contact.phoneNo)
                {
                    contactsArray.remove(at: i)
                    break
                }
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
            // Call Save
            saveContacts()
            print("delete row \(indexPath.row)")
        }
        
        //else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        //}
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
 {
        super.prepare(for: segue, sender: sender)
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        switch (segue.identifier ?? " " )
    {
        case "ViewContact":
            // prepare for the selected contant
            guard let contactViewController = segue.destination as? ContactViewController
            else
            {
                break
            }
            guard let indexPath = tableView.indexPathForSelectedRow
            else
            {
                break
            }
            let selectedContact = filteredArray [indexPath.row]
            contactViewController.contact = selectedContact
            break
        default: break
     }
 
  }
    
    
    @IBAction func unwindToContacts(senber: UIStoryboardSegue)
    {
        if let sourceViewController = senber.source as? ContactViewController, let contact = sourceViewController.contact {
            if let selectedIndexPath = tableView.indexPathForSelectedRow
            {
                //ok , we are editing
                let oldContact =  filteredArray [selectedIndexPath.row]
                filteredArray [selectedIndexPath.row] = contact
                // this bad too
                //contactsArray [selectedIndexPath.row] = contact //for search
                for i in selectedIndexPath.row ..< contactsArray.count
                {
                    if (contactsArray[i].name==oldContact.name && contactsArray[i].phoneNo==oldContact.phoneNo)
                    {
                        contactsArray [i] = contact
                    }
                }
                
                tableView .reloadRows(at:[selectedIndexPath], with:.none)
            }
            else
            {
                // we are adding
                
                filteredArray.append(contact)
                contactsArray.append(contact)
                contactsArray.sort(by:{$0.name.lowercased() < $1.name.lowercased()})// for sorting
                let newIndexPath = IndexPath (row:filteredArray.count-1,section: 0)
                tableView.insertRows(at: [newIndexPath], with:.automatic)
                
            }
            // Save
            saveContacts()
        }
    }
    
     // ////Search
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        // put search code here
        if (searchText.isEmpty)
        {
            filteredArray = contactsArray
        }
        else
        {
        filteredArray = contactsArray.filter ({contacts -> Bool in return
                                                contacts.name.lowercased().contains(searchText.lowercased())})
        }
        // update to tablw view
        tableView.reloadData()
    }

    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
    {
     let selectedButtonText = searchBar.scopeButtonTitles![selectedScope]
        print("hello \(selectedButtonText)")
    }
    
    // MARK private methods
    private func saveContacts ()
    {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject (contactsArray, toFile: phoneEntry.ArchiveURL.path)
        if (!isSuccessfulSave)
        {
            print("Save unseccessful")
        }
    }
    private func loadContacts() -> [phoneEntry]?
    {
        return NSKeyedUnarchiver.unarchiveObject(withFile:phoneEntry.ArchiveURL.path) as? [phoneEntry]
    }
}
