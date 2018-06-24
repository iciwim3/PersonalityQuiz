//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Sain-R Edwards on 6/23/18.
//  Copyright © 2018 Swift Koding 4 Everyone. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var singleAnswerSV: UIStackView!
    @IBOutlet weak var multipleAnswerSV: UIStackView!
    @IBOutlet weak var rangeAnswerSV: UIStackView!
    
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    var questions: [Question] = [
        
        Question(text: "Which food do you like the most?", type: .single, answers: [
            Answer(text: "Steak", type: .dog),
            Answer(text: "Fish", type: .cat),
            Answer(text: "Carrots", type: .rabbit),
            Answer(text: "Corn", type: .turtle)
            ]),
        
        Question(text: "Which activities do you enjoy?", type: .multiple, answers: [
            Answer(text: "Swimming", type: .turtle),
            Answer(text: "Sleeping", type: .cat),
            Answer(text: "Cuddling", type: .rabbit),
            Answer(text: "Eating", type: .dog)
            ]),
        
        Question(text: "How much do you enjoy care rides?", type: .ranged, answers: [
            Answer(text: "I dislike them", type: .cat),
            Answer(text: "I get a little nervous", type: .rabbit),
            Answer(text: "I barely notice them", type: .turtle),
            Answer(text: "I love them", type: .dog)
            ])
        
    ]
    
    func updateUI() {
        singleAnswerSV.isHidden = true
        multipleAnswerSV.isHidden = true
        rangeAnswerSV.isHidden = true
        
        navigationItem.title = "Question  #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type {
            case .single:
                singleAnswerSV.isHidden = false
            case .multiple:
                multipleAnswerSV.isHidden = false
            case .ranged:
                rangeAnswerSV.isHidden = false
        }
    }

}
