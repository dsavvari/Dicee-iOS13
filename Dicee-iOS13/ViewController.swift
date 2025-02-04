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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceSix");
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: "DiceFour");

    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceRollValues = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")
        ];
        
        diceImageViewOne.image = diceRollValues.randomElement()
        diceImageViewTwo.image = diceRollValues.randomElement()

    }
}

