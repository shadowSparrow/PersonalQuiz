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
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
   
    @IBOutlet weak var rangedStackView: UIStackView!
    
    private let questions = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

extension QuestionViewController {
    private func setupUI() {
        
        
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        
    }
    
}
