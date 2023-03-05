//
//  ContcatsTableViewController.swift
//  ExpenseTracker
//
//  Created by Hossam Farfour on 20/03/2022.
//

import UIKit

class ContactsTableViewController: UITableViewController,UISearchBarDelegate {

    // define an array to keep the details in
    var receiptArray:[ExpenseTracker]=[]
    
    // Arry for search
    var filteredArray:[ExpenseTracker]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   // check save details
        if let savedDetails = loadContacts()
        {
            receiptArray = savedDetails
        }
        
        //sorting  alphabatically
        receiptArray.sort(by:{$0.name.lowercased() < $1.name.lowercased()})
        
       // copy the receiptArry into FilterArry for search
        filteredArray=receiptArray
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
    
     override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style:.normal, title:"favourite")
        {
            [weak self](action,view,completionHandler) in
            self?.favouriteSwipeActionAt(indexPath:indexPath)
            completionHandler(true)
        }
        action.backgroundColor = UIColor.blue
        return UISwipeActionsConfiguration(actions:[action])
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReceiptCell", for: indexPath)

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
  
           // receiptArray.remove(at: indexPath.row)
            
            for i in indexPath.row ..< receiptArray.count
            {
                if (receiptArray[i].name==contact.name && receiptArray[i].amount==contact.amount)
                {
                    receiptArray.remove(at: i)
                    break
                }
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
            // Call Save
            saveDetails()
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
                let oldReceipt =  filteredArray [selectedIndexPath.row]
                filteredArray [selectedIndexPath.row] = contact
                for i in selectedIndexPath.row ..< receiptArray.count
                {
                    if (receiptArray[i].name==oldReceipt.name && receiptArray[i].amount==oldReceipt.amount)
                    {
                        receiptArray [i] = contact
                    }
                }
                
                tableView .reloadRows(at:[selectedIndexPath], with:.none)
            }
            else
            {
                // we are adding
                
                filteredArray.append(contact)
                receiptArray.append(contact)
                receiptArray.sort(by:{$0.name.lowercased() < $1.name.lowercased()})// for sorting
                let newIndexPath = IndexPath (row:filteredArray.count-1,section: 0)
                tableView.insertRows(at: [newIndexPath], with:.automatic)
                
            }
            // Save
            saveDetails()
        }
    }
    
     //  Search
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        // search code
        if (searchText.isEmpty)
        {
            filteredArray = receiptArray
        }
        else
        {
        filteredArray = receiptArray.filter ({contacts -> Bool in return
                                                contacts.name.lowercased().contains(searchText.lowercased())})
        }
        // updating to tablw view
        tableView.reloadData()
    }

    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
    {
     let selectedButtonText = searchBar.scopeButtonTitles![selectedScope]
        print("hello \(selectedButtonText)")
    }
    
    // MARK private methods
    private func saveDetails ()
    {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject (receiptArray, toFile: ExpenseTracker.ArchiveURL.path)
        if (!isSuccessfulSave)
        {
            print("Save unseccessful")
        }
    }
    private func loadContacts() -> [ExpenseTracker]?
    {
        return NSKeyedUnarchiver.unarchiveObject(withFile:ExpenseTracker.ArchiveURL.path) as? [ExpenseTracker]
    }
    
    private func favouriteSwipeActionAt(indexPath:IndexPath)
    {
        print("favourite requested for \(indexPath)")
        
    }
}
