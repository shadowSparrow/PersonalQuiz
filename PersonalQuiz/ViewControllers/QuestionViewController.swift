//
//  QuestionViewController.swift
//  PersonalQuiz
//
//  Created by mac on 19.05.2023.
//

import UIKit

class QuestionViewController: UIViewController {

    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedSlider: UISlider!
    @IBOutlet var rangedLabels: [UILabel]!
    
    
    private let questions = Question.getQuestions()
    private var questionIndex = 0
    private var answerChosen: [Answer] = []
    
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
         
        guard let buttonIndex = singleButtons.firstIndex(of: sender) else {return}
        let currentAnswer = currentAnswers[buttonIndex]
        answerChosen.append(currentAnswer)
        
        nextQuestion()
        
    }
    
    @IBAction func multipleStackViewButtonPressed() {
    }
    
    @IBAction func rangedAnswerButtonPressed() {
    }
}

extension QuestionViewController {
    private func setupUI() {
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        let currentQuestion = questions[questionIndex]
        questionLabel.text = currentQuestion.title
        let totalProrgress = Float(questionIndex) / Float(questions.count)
        progressView.setProgress(totalProrgress, animated: true)
        title = "Вопрос №\(questionIndex + 1) из \(questions.count)"
        
        showCurrentAnswer(for: currentQuestion.type)
        
    }
    
    private func showCurrentAnswer(for type: ResponseType) {
        
        switch type {
        case .single:
            showSingleStackView(with: currentAnswers)
        case .multiple:
            showSingleStackView(with: currentAnswers)
        case .ranged:
            break
        }
    }
    
    private func showSingleStackView(with answers: [Answer]) {
        singleStackView.isHidden = false
        
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.title, for: .normal)
        }
    }
    
    private func showMultipleStackView(with answers: [Answer]) {
        singleStackView.isHidden = false
        
        for (label, answer) in zip(multipleLabels, answers) {
            label.text = answer.title
        }
        
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            setupUI()
            return //?
        }
        
        performSegue(withIdentifier: "showResult", sender: nil)
        
    }
    
}
