//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Sain-R Edwards on 6/24/18.
//  Copyright © 2018 Swift Koding 4 Everyone. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case multiple, ranged, single
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "😸", rabbit = "🐇", turtle = "🐢"
    
    var definition: String {
        switch self {
            case .dog:
                return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
            case .cat:
                return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
            case .rabbit:
                return "You love everything that's soft. You are healthy and full of energy."
            case .turtle:
                return "You are wide beyond your years, and you focus on details. Slow and steady wins the race."
        }
    }
}
