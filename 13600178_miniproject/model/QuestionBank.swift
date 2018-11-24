//
//  QuestionBank.swift
//  13600178_miniproject
//
//  Created by Tanai thassanapinyo on 16/11/2561 BE.
//  Copyright © 2561 Tanai Thassanapinyo. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    
    init(){
        // indext = 0
        let item = Question (text: "สีเสริมอำนาจคือสีเหลืองใช่หรือไม่", correctAnswer: true)
        list.append(item)
        
        list.append(Question(text: "สีฟ้าคือสีโชคลาภใช่หรือไม่", correctAnswer: false))
        list.append(Question(text: "สีส้มเป็นสีมีคนอุปถัมภ์ใช่หรือไม่", correctAnswer: true))
        list.append(Question(text: "สีดำเป็นสีต้องห้ามใช่หรือไม่", correctAnswer: true))
        
    }
}
