//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by James Frazee on 2/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let options: Array<String>
    let correctAnswer: String
    
    init(q: String, options: Array<String>, a: String) {
        self.text = q
        self.options = options
        self.correctAnswer = a
    }
}
