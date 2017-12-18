//
//  ViewController.swift
//  Dice
//
//  Created by Shang Chi Cheng on 2017/12/18.
//  Copyright © 2017年 shyon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dices:[String] = ["dice1.png", "dice2.png", "dice3.png", "dice4.png", "dice5.png", "dice6.png"]

    @IBOutlet weak var diceimg01: UIImageView!
    @IBOutlet weak var diceimg02: UIImageView!
    @IBAction func rollBtn(_ sender: Any) {
        updateDiceImg()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImg()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateDiceImg () {
        let imgdice1 = Int(arc4random_uniform(6))
        let imgdice2 = Int(arc4random_uniform(6))
        diceimg01.image = UIImage(named: dices[imgdice1])
        diceimg02.image = UIImage(named: dices[imgdice2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImg()
    }
}

