//
//  colorlucky3.swift
//  13600178_miniproject
//
//  Created by Tanai thassanapinyo on 10/11/2561 BE.
//  Copyright © 2561 Tanai Thassanapinyo. All rights reserved.
//

import Foundation
import UIKit

class Colorlucky3: UIViewController {
    
    @IBOutlet weak var colorfulImageView: UIImageView!
    var randomDiceIndex1 : Int = 0
    var diceArray = ["blue", "green", "red", "yellow",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func randomButton(_ sender: Any) {
        changeDiceFace()
    }
    func changeDiceFace(){
        randomDiceIndex1 = Int(arc4random_uniform(4))
        colorfulImageView.image = UIImage(named:diceArray[randomDiceIndex1])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeDiceFace()
    }
}

