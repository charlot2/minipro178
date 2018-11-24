//
//  colorlucky2.swift
//  13600178_miniproject
//
//  Created by Tanai thassanapinyo on 9/11/2561 BE.
//  Copyright © 2561 Tanai Thassanapinyo. All rights reserved.
//

import Foundation
import UIKit

class Colorlucky2: UIViewController {
    @IBOutlet weak var timeCount: UILabel!
    var timer = Timer()
    var timCount = 10
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    var score1 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Colorlucky2.processTimer),userInfo: nil, repeats: true)
    }
    @objc func processTimer(){
        if timCount > 0{
            timCount -= 1
            timeCount.text = String(timCount)
        }else{
            timer.invalidate()
        }
        if timCount <= 0 {
            timCount = 0
            timeCount.text = String(timCount)
        }
        timeCount.text = String(timCount)
    }
 
    @IBAction func answerButton(_ sender: Any) {
        if timCount > 0{
        if (sender as AnyObject).tag == 1 {
            print("picked true")
            pickedAnswer = true
            checkAnswer()
            ProgressHUD.showSuccess("ถูกต้องจ้า")
            
             nextQuestion()
        }else if (sender as AnyObject).tag == 2{
            print("picked false")
            pickedAnswer = false
            checkAnswer()
            ProgressHUD.showError("ผิดจ้า")
            nextQuestion()
        }
        checkAnswer()
        questionNumber = questionNumber+1
        updateUI()
    }
    }
    func checkAnswer(){
        if questionNumber < 4 {
            let correctAnswer = allQuestion.list[questionNumber].answer
            if correctAnswer == pickedAnswer {
                print("you got it")
                score = score + 1
                ProgressHUD.showSuccess("ถูกต้องจ้า")
                
            }else {
                print("Wrong!")
                score1 = score1 + 1
                ProgressHUD.showError("ผิดจ้า")
            }
        }
        
        
    }
    func nextQuestion(){
        if questionNumber < 4 {
            questionLabel.text = allQuestion.list[questionNumber].questionText
        }else{
            print("end of question")
            
        }
        
}
    func updateUI(){
        nextQuestion()
    }
}
