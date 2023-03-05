//
//  ViewController.swift
//  MyHelloWorld
//
//  Created by Hossam Farfour on 12/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var taxbox: UITextField!
    @IBOutlet weak var outputlable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clivkmebutton(_ sender: Any) {
        outputlable.text = "hello, " + taxbox.text!
    }
    
}

