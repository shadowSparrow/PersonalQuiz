//
//  Question.swift
//  PersonalQuiz
//
//  Created by mac on 19.05.2023.
//

import Foundation

struct Question {
    let title: String
    let type: QuestionType
    let answer: [AnswerType]
    
    static func getQuestions() -> [Question] {
        [
            
            // Списков вопросов
        Question(title: "Какую пищу предпочитаете", type: .single, answer: [
        
            AnswerType(title: "Мясо", type: .dog),
            AnswerType(title: "Рыба", type: .cat),
            AnswerType(title: "Морковь", type: .rabbit),
            AnswerType(title: "Капуста", type: .turtle)
        ]),
        Question(title: "Что вам нравится больше?", type: .multiple, answer: [
        
        
            AnswerType(title: "Плавать", type: .dog),
            AnswerType(title: "Спать", type: .cat),
            AnswerType(title: "Обниматься", type: .rabbit),
            AnswerType(title: "Есть", type: .turtle)
        
        ]),
        
        Question(title: "Либите ли вы поездки на машине?", type: .ranged, answer: [
        
            AnswerType(title: "Ненавижу", type: .dog),
            AnswerType(title: "Нервничаю", type: .cat),
            AnswerType(title: "Не замечаю", type: .rabbit),
            AnswerType(title: "Обожаю", type: .turtle)
        
        ])
        
        
        
        
        ]
        
        
    }
    
}
enum QuestionType {
    case single
    case multiple
    case ranged
}
struct AnswerType{
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
