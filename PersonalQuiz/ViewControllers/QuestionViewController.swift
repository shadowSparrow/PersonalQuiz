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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
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
        
    }
    
}
