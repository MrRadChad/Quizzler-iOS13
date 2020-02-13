//
//  QuizLogic.swift
//  Quizzler-iOS13
//
//  Created by James Frazee on 2/10/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizLogic {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", options: ["Heart", "Skin", "Large Intestine"], a: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", options: ["25", "50", "100"], a: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", options: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], a: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", options: ["Chapeau", "Écharpe", "Bonnet"], a: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", options: ["Notebook", "Handkerchief", "Watch"], a: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", options: ["Au Revoir", "Adiós", "Salir"], a: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", options: ["Green", "Orange", "Blue"], a: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", options: ["Rum", "Whisky", "Gin"], a: "Rum"),
        Question(q: "What type of animal was Harambe?", options: ["Panda", "Gorilla", "Crocodile"], a: "Gorilla"),
        Question(q: "Where is Tasmania located?", options: ["Indonesia", "Australia", "Scotland"], a: "Australia")
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getAnswerText(_ multipleChoice: Int) -> String{
        return quiz[questionNumber].options[multipleChoice]
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() -> Bool {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            return true
        } else {
            questionNumber = 0
            score = 0
            return false
        }
    }
    
//    func isTrueOrFalse() -> Bool {
//        if (quiz[questionNumber].correctAnswer == "True" || quiz[questionNumber].correctAnswer == "False"){
//            return true
//        } else {
//            return false
//        }
//    }
    
//    func isThreeChoice() -> Bool {
//        if (quiz[questionNumber].options.count < 4){
//            return true
//        } else {
//            return false
//        }
//    }

    func getScore() -> Int {
        return score
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer{
            score += 1
            return true
        } else {
            return false
        }
    }
}
