//
//  colorlucky.swift
//  13600178_miniproject
//
//  Created by Tanai thassanapinyo on 9/11/2561 BE.
//  Copyright © 2561 Tanai Thassanapinyo. All rights reserved.
//

import Foundation
import UIKit



class Colorlucky: UIViewController {
    
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func redButton(_ sender: Any) {
        colorLabel.text = String("สีเหลือง, สีขาว")
        
    }
    @IBAction func orangeButton(_ sender: Any) {
        colorLabel.text = String("สีชมพู")
    }
    @IBAction func yellowButton(_ sender: Any) {
        colorLabel.text = String("สีส้ม")
    }
    @IBAction func greenButton(_ sender: Any) {
        colorLabel.text = String("สีดำ")
    }
    
    
    
}

