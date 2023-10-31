//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //get an array to store the collection of image literals
        let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        let leftDiceNumber = Int.random(in: 0...5)
        let rightDiceNumber = Int.random(in: 0...5)
        print("Roll the dice: leftDiceNumber =", leftDiceNumber+1, " rightDiceNumber =", rightDiceNumber+1)
        diceImageViewOne.image = diceArray[leftDiceNumber]
        diceImageViewTwo.image = diceArray[rightDiceNumber]
        
    }
}

