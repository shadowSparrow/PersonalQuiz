//
//  Question.swift
//  PersonalQuiz
//
//  Created by mac on 19.05.2023.
//

import Foundation

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            
            // Списков вопросов
        Question(title: "Какую пищу предпочитаете?", type: .single, answers: [
        
            Answer(title: "Мясо", type: .dog),
            Answer(title: "Рыба", type: .cat),
            Answer(title: "Морковь", type: .rabbit),
            Answer(title: "Капуста", type: .turtle)
        ]),
        Question(title: "Что вам нравится больше?", type: .multiple, answers: [
        
        
            Answer(title: "Плавать", type: .dog),
            Answer(title: "Спать", type: .cat),
            Answer(title: "Обниматься", type: .rabbit),
            Answer(title: "Есть", type: .turtle)
        
        ]),
        
        Question(title: "Либите ли вы поездки на машине?", type: .ranged, answers: [
        
            Answer(title: "Ненавижу", type: .dog),
            Answer(title: "Нервничаю", type: .cat),
            Answer(title: "Не замечаю", type: .rabbit),
            Answer(title: "Обожаю", type: .turtle)
        
        ])
        ]
    }
    
}
enum ResponseType {
    case single
    case multiple
    case ranged
}
struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String  {
        switch self {
        case .dog:
           return "Вы либите общаться только с теми кто вам нарпавиться и всегда готов помочь"
        case .cat:
            return "Вы сами себе на уме. Любите гулять и цените одиночество"
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии"
        case .turtle:
            return "Ваша сила в мудрости. Вы делаете все медлено на качетсвенно"
        }
    }
}
