//
//  QuestionViewController.swift
//  PersonalQuiz
//
//  Created by mac on 19.05.2023.
//

import UIKit

class QuestionViewController: UIViewController {

    private let questions = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    @IBAction func singleButtonAnswerPressed(_ sender: UIButton) {
    }
    
    @IBAction func multipleActionButtonPressed() {
    }
    
    @IBAction func rangedAnswerButtonPressed() {
    }
    
}

extension QuestionViewController {
    private func setupUI() {
        
        
        //for stackView in [singleQuestionStackView, multipleStackView, rangedStackView] {
            //stackView?.isHidden = true
        //}
        
    }
    
}
