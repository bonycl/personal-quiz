//
//  QuestionViewController.swift
//  personal quiz
//
//  Created by D i on 23.11.2023.
//

import UIKit

class QuestionViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet weak var rangedSlider: UISlider!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    //MARK: - Private properties
    private let questions = Question.getQuestion()
    private var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    //MARK: - Private methods
    //Update user interface
    private func updateUI() {
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        //get current question
        let currentQuestion = questions[questionIndex]
        
        //set current question for questionLabel
        questionLabel.text = currentQuestion.text
        
        //calc progress
        let totalProgress = Float(questionIndex / questions.count)
        
        //set progress for question progress view
        questionProgressView.setProgress(totalProgress, animated: true)
        
        //set navigation title
        title = "Вопрос №\(questionIndex + 1) из \(questions.count)"
        
        let currentAnswers = currentQuestion.answers
        
        //show stackView corresponding to a question type
        switch currentQuestion.type {
        case .single:
            updateSingleStackView(using: currentAnswers)
        case .multiple:
            updateMultipleStackView(using: currentAnswers)
        case .ranged:
            updateRangedStackView(using: currentAnswers)
        }
        
    }

    /// Setup single stack view
    /// - Parameter answers: - array with answers
    ///
    /// Description of method updateSingleStackView
    private func updateSingleStackView(using answers: [Answer]) {
        //show single stack view
        singleStackView.isHidden = false
    }
    
    /// Setup multiple stack view
    /// - Parameter answers: - array with answers
    ///
    ///Description of method updateMultipleStackView
    private func updateMultipleStackView(using answers: [Answer]) {
        //show single stack view
        multipleStackView.isHidden = false
    }
    
    /// Setup ranged stack view
    /// - Parameter answers: - array with answers
    ///
    ///Description of method updateRangedStackView
    private func updateRangedStackView(using answers: [Answer]) {
        //show single stack view
        rangedStackView.isHidden = false
    }

}
