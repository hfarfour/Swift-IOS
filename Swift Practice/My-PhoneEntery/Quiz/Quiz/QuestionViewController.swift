//
//  ViewController.swift
//  Quiz
//
//  Created by Hossam Farfour on 13/10/2022.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var questionImageview: UIImageView!
    
    var question: Question?
    
    @IBAction func asnwerButoon(_ sender: UIButton) {
        
        if let question = self.question {
            
            let buttontitle = sender.title(for: .normal)
            if (buttontitle == question.options[0]) {// we know if is correct (first option in array)
                // correct
                
                question.answerd = question.Correct
            } else {
                //incorrect
                question.answerd = question.Incorrect
            }
        }
        // unwind to list of question  // return 
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let question = self.question {
            questionLable.text = question.title
            questionImageview.image = question.photo
            
            let answers = question.options.shuffled() // mix asnwers
            
            // access button using tag
            var button:UIButton = UIButton()
            for i in 1...3 {
                button = view.viewWithTag(i) as! UIButton
                button.setTitle(answers[i-1], for: .normal)
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)  
    }
}

