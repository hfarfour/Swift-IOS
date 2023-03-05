// coco file
//  ContactsTableViewController.swift
//  PhoneBook
//
//  Created by Hossam Farfour on 16/10/2022.
//

import UIKit

class ContactsTableViewController: UITableViewController,UISearchBarDelegate {

    
    //store the contacts
    var contactsArry: [phoneEntry] = []
    //filtred array for search
    var filteredContact: [phoneEntry] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let savedContact = LoadContact() {
            contactsArry = savedContact
        } else {
            // this is the first time the app has launched
            if let contact1 = phoneEntry.init(name: "Hossam", phoneNumber: "07577021377", photo: nil) {
                contactsArry.append(contact1)
            }
        }
        // for sorting
        contactsArry.sort(by: {$0.name.lowercased() < $1.name.lowercased()})
        // make a cope of contactsArry
       filteredContact = contactsArry
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredContact.count
    }
    // for swipe
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
       
        let action = UIContextualAction(style: .normal, title: "Favourite") {
            [weak self](action , view , completionHandler) in
            self? .favouriteContactSwipeAction(indexPath: indexPath)
            completionHandler(true)
        }
        // for backround color
        action.backgroundColor = UIColor.blue
        return UISwipeActionsConfiguration (actions: [action])
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        // Configure the cell...
        // set the lable of the cell
        cell.textLabel?.text = filteredContact[indexPath.row].name
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
            let contact = filteredContact[indexPath.row]
            filteredContact.remove(at: indexPath.row)
            // Delete the row from the orginal data source
            // this is bad because it delet the first index
            //contactsArry.remove(at: indexPath.row)
            //instead search for the contact to remove it.
            for i in indexPath.row ..< contactsArry.count {
                if (contactsArry[i].name == contact.name && contactsArry[i].phoneNumber == contact.phoneNumber){
                    contactsArry.remove(at: i)
                    break
                }
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
            // call save contatc after delet
            saveContact()
        }
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // Pass the selected object to the new view controller.
        super.prepare(for: segue, sender: sender)
        
        switch (segue.identifier ?? "" )
        {
        case "ViewContact":
            //prepare for the selected contact
            // Get the new view controller using segue.destination.
            guard let contactViewController = segue.destination as? ContactViewController
            else {
                break
            }
            guard let indexPath = tableView.indexPathForSelectedRow
            else {
                break
            }
            let selectedContact = filteredContact[indexPath.row]
            contactViewController.contect = selectedContact
            break
            
        default:
            break
        }
        
    }
   
    
    @IBAction func unwinedToContacts (sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? ContactViewController,
           let contact = sourceViewController.contect {
            // check if we were editing or adding a contact
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                //Ok we are editing
                let oldContact = filteredContact[selectedIndexPath.row]
                filteredContact[selectedIndexPath.row] = contact
                // this is bad, search for the contact defor editing
               // contactsArry[selectedIndexPath.row] = contact
                for i in selectedIndexPath.row ..< contactsArry.count {
                    if (contactsArry[i].name == oldContact.name && contactsArry[i].phoneNumber == oldContact.phoneNumber){
                        contactsArry[i] = contact
                    }
                }
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                // we are adding
                filteredContact.append(contact)
                contactsArry.append(contact)
                contactsArry.sort(by: {$0.name < $1.name}) // for sorting
               
                let newIndexPath = IndexPath(row: filteredContact.count-1, section: 0)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
                filteredContact.sort(by: {$0.name.lowercased() < $1.name.lowercased()})
            }
            // call save
            saveContact()
           
        }
    }
    // search
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // put serach code here
        if (searchText.isEmpty) {
            filteredContact = contactsArry
        } else {
            filteredContact = contactsArry.filter({ contact -> Bool in return
                contact.name.lowercased().contains(searchText.lowercased()) })
        }
        /// after that  update the table view
        tableView.reloadData()
    }
    // func for All must and some
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        let selectedButtonText = searchBar.scopeButtonTitles![selectedScope]
    }
    
    
    private func saveContact () {
        let isSuccessfullSave = NSKeyedArchiver.archiveRootObject(contactsArry ,toFile: phoneEntry.ArchiveURL.path )
        if (!isSuccessfullSave) {
            print("Save unsuccessful")
        }
    }
    
    private func LoadContact () -> [phoneEntry]? {
        return NSKeyedUnarchiver.unarchiveObject(withFile: phoneEntry.ArchiveURL.path) as? [phoneEntry]
    }
    
    // for swipe action
    private func favouriteContactSwipeAction(indexPath: IndexPath) {
        print("favourite requested for \(indexPath)")
    }
    
}
