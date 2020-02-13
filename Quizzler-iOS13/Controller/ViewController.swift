//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    
    var quizLogic = QuizLogic()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizLogic.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        if quizLogic.nextQuestion() {
            updateUI()
        } else {
            updateUI()
        }
    }
    
    func updateUI(){
//        aButton.setTitle(quizLogic.getAnswerText(3), for: .normal)
        bButton.setTitle(quizLogic.getAnswerText(2), for: .normal)
        cButton.setTitle(quizLogic.getAnswerText(1), for: .normal)
        dButton.setTitle(quizLogic.getAnswerText(0), for: .normal)
        
        questionLabel.text = quizLogic.getQuestionText()
        progressBar.progress = quizLogic.getProgress()
        scoreLabel.text = "Score: \(String(quizLogic.getScore()))/\(quizLogic.quiz.count)"
        
//        self.aButton.isHidden = quizLogic.isTrueOrFalse() || quizLogic.isThreeChoice()
//        self.bButton.isHidden = quizLogic.isTrueOrFalse()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
//            self.aButton.backgroundColor = UIColor.clear
            self.bButton.backgroundColor = UIColor.clear
            self.cButton.backgroundColor = UIColor.clear
            self.dButton.backgroundColor = UIColor.clear
        }
    }
}

