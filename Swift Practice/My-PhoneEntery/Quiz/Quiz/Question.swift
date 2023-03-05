//
//  Question.swift
//  Quiz
//
//  Created by Hossam Farfour on 13/10/2022.
//

import UIKit

class Question {
    
    public let Correct = 1
    public let Incorrect = 0
    public let Unanswred = -1

    
    init? (name: String , options: [String], image: UIImage?) {
        if name.isEmpty || options.isEmpty {
            return nil
        }
        self.title = name
        self.options = options
        self.photo = image
        answerd = 0
    }
    
    //the questions
    var title: String = ""
    // opetions for the answers , first option should be correct
    var options: [String] = [""]
    // photos for the question , if no photo will have a defult
    var photo: UIImage?
    var answerd = 0 // 0 unanswerd question, 1 is correct , -1 uncorrect
    
}

