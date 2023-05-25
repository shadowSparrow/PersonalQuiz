//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by mac on 19.05.2023.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalDescriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResults()
        }
}

extension ResultsViewController {
    private func updateResults() {
    
        var frequencyOfAnimals: [AnimalType: Int] = [:]
        let animals = answers.map { $0.type }
        
        
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequencyOfAnimals[animal] = 1
            }
        }
        /*
        for animal in animals {
            frequencyOfAnimals[animal] = (frequencyOfAnimals[animal] ?? 0) + 1
        }
         */
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequentAnimal = sortedFrequencyOfAnimals.first?.key else {return}
        
        UpdateUI(with: mostFrequentAnimal)
    }
    
    private func UpdateUI(with animal: AnimalType?) {
        animalNameLabel.text = "Вы - \(animal?.rawValue ?? "🐶")!"
        animalDescriptionLabel.text = animal?.definition
    }
}

