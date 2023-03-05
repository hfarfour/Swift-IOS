//
//  ViewController.swift
//  TicTacTo
//
//  Created by Hossam Farfour on 13/10/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    // create grid array for game
    //o means empty , 1 means nought , 2 means cross
    let Empty: Int8 = 0
    let Nought: Int8 = 1
    let Cross: Int8 = 2
    var gameState: [Int8] = [0,0,0,0,0,0,0,0,0]
    var turn: Int8 = 0
    
    
    // lood for the winning
    let winningCombination = // all posible winning combinations
    [[0,1,2],[3,4,5],[6,7,8], // crose ways may winn
     [0,3,6],[1,4,7],[2,5,8], // going down may winn
     [0,4,8],[2,4,6],]
    var gameActive: Bool = false // to allow me to stop the game if someone win
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gameState = [Empty,Empty,Empty,Empty,Empty,Empty,Empty,Empty,Empty]
        turn = Cross // to start with
        gameActive = true
    }

    @IBAction func playButton(_ sender: UIButton) {
        gameActive = true
        gameState = [Empty,Empty,Empty,Empty,Empty,Empty,Empty,Empty,Empty]
        turn = Nought
        playAgainButton.isHidden = true
        result.isHidden = true
        for i in 1...9 {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControl.State())
        }
        // save the game
        UserDefaults.standard.set(gameState, forKey: "ticTacToo")
    }
    @IBAction func buttonTouch(_ sender: UIButton) {
        if (gameActive) {
        // check if the game is active
        //check if the button is clear
        if (gameState[sender.tag-1] == Empty) {
            
        gameState[sender.tag-1] = turn // in this position will set the trun (x,o)(then can not be changed)
        //if x is turn
        if (turn == Cross) {
            sender.setImage(UIImage(named: "x"), for: UIControl.State()) // state of the button , can be many
            // set whose trun next
            turn = Nought
        } else {
            sender.setImage(UIImage(named: "o"), for: UIControl.State())
            // after turn nought is cross
            turn = Cross
        }
        // check fo winner
            for combination in winningCombination {
                if (gameState[combination[0]] != Empty && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[0]] == gameState[combination[2]]) {
                    
                    // tp paly again
                    playAgainButton.isHidden = false
                    result.isHidden = false
                    if(gameState[combination[0]] == Cross) {
                        result.text = "cross win!"
                    } else {
                        result.text = "Nought win!"
                    }
                    
                    // if wineer , end game// when someone win trminate the game
                    gameActive = false
                }
             }
            // save the game
            UserDefaults.standard.set(gameState, forKey: "ticTacToo")
          }
          
       }
    }
}

