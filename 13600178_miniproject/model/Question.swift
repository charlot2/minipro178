//
//  Question.swift
//  13600178_miniproject
//
//  Created by Tanai thassanapinyo on 16/11/2561 BE.
//  Copyright © 2561 Tanai Thassanapinyo. All rights reserved.
//

import Foundation
class Question{
    let answer : Bool
    let questionText : String
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
}
