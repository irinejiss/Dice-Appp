//
//  ViewController.swift
//  Dice
//
//  Created by Irine Babu on 14/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    
    let diceArray = ["dice1" , "dice2" , "dice3" , "dice4" , "dice5" , "dice6"]
    
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollingDice(_ sender: UIButton) {
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        print(randomDice1)
        diceImage1.image = UIImage(named: diceArray[randomDice1])
        diceImage2.image = UIImage(named: diceArray[randomDice2])
    }
    
}

