//
//  QuestionTableViewController.swift
//  Quiz
//
//  Created by Hossam Farfour on 13/10/2022.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    // set the question fro the quiz
    var questions: [Question] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // load the quis question when the viewDidload
        createquestions()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       

        // Configure the cell...
        let cellIdentifier = "questionTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? questionTableViewCell
        else {
            fatalError("The dequeued cell in not an instace of questionTableViewCell")
        }
        let question = questions[indexPath.row]
        cell.questionLable.text = "question \(indexPath.row+1)"
        
        switch question.answerd {
        case question.Correct:
            cell.questionImage.image = UIImage(named: "correct")
            break
        case question.Incorrect:
            cell.questionImage.image = UIImage(named: "uncorrect")
            break
        default :
            cell.imageView?.image = UIImage(named: "unanswred")
            break
        }

         return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        super.prepare(for: segue, sender: sender)
        // get the view controller
        guard let questionViewController = segue.destination as? QuestionViewController
        else {
            fatalError("Unexpected destination \(segue.destination)")
        }
        guard let selectedQuestionCell = sender as? questionTableViewCell
        else {
            fatalError("Unexpected sender \(sender ?? self)")
        }
        // get the selected row index
        guard let indexPath = tableView.indexPath(for: selectedQuestionCell)
        else {
            fatalError("The selected cell is not being displayed by the table \(sender ?? self)")
        }
        //load question
        let selectedQuestion  = questions[indexPath.row]
        questionViewController.question  = selectedQuestion
    }
 
    @IBAction func unwindToQuestions (sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? QuestionViewController,
           let question = sourceViewController.question {
            // get selected row
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                questions[selectedIndexPath.row] = question
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            }
        }
    }
    
    private func createquestions() {
        let photo1 = UIImage(named: "photo1")
        let photo2 = UIImage(named: "photo2")
        let photo3 = UIImage(named: "photo3")
        
        guard let quetsion1 = Question(name: "Name of the first James Bond Film", options: ["Dr No", "GoldFinger", "Casino Royal"], image: photo1)
        else {
            fatalError("unable to instantiate question 1")
        }
        guard let quetsion2 = Question(name: "What is the code name of Boun's boss", options: ["M", "L", "N"], image: photo2)
         else {
             fatalError("unable to instantiate question 2")
         }
        guard let quetsion3 = Question(name: "How is played Bond only once", options: ["George Lazenby", "Danil Craige", "Timothy Dalton"], image: photo3)
         else {
             fatalError("unable to instantiate question 3")
         }
        // loading question
        questions += [quetsion1 ,quetsion2 ,quetsion3]
    }
}
