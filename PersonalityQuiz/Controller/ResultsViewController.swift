//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Sain-R Edwards on 6/23/18.
//  Copyright © 2018 Swift Koding 4 Everyone. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultsAnswerLabel: UILabel!
    @IBOutlet weak var resultsDefinitionLabel: UILabel!
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
        
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultsAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultsDefinitionLabel.text = mostCommonAnswer.definition
    }

}
