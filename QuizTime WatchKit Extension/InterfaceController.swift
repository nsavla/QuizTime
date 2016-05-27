//
//  InterfaceController.swift
//  QuizTime WatchKit Extension
//
//  Created by igmstudent on 4/22/16.
//  Copyright © 2016 igmstudent. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    //MARK:- ivars -
    // We have an outlet for all UI elements in the screen
    @IBOutlet var questionLabel: WKInterfaceLabel!
    @IBOutlet var scoreLabel: WKInterfaceLabel!
    @IBOutlet var falseButton: WKInterfaceButton!
    @IBOutlet var trueButton: WKInterfaceButton!
    let QuestionList = QuestionCollection()
    var NumberOfQuestions : Int?
    var desiredValue : Bool?
    var score = 0
    var questionIndex = 1
    
    //MARK:- Watch Life Cycle -
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        score = -1
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NumberOfQuestions = QuestionList.Questions.count
        nextQuestion()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //MARK- Button Event -
    @IBAction func trueButtonPressed() {
        // If the user presses the correct value, which is true in this case
        if desiredValue == true {
            nextQuestion()
        } else {
            //Show the Results Screen
            presentControllerWithName("ResultLayout", context: score)
        }
    }
    
    
    @IBAction func falseButttonPressed() {
        // If the user presses the correct value, which is false in this case
        if desiredValue == false {
            nextQuestion()
        } else {
            //Show the Results Screen
            presentControllerWithName("ResultLayout", context: score)
            
        }
    }
    
    func nextQuestion(){
        // The user has pressed right option. Increase the score.
        score++
        scoreLabel.setText("Score : \(score)")
        
        // Show the next question
        let question = QuestionList.Questions[questionIndex]
        print(question!.questionName)
        questionLabel.setText(question!.questionName)
        questionIndex++
        // If all questions are over, repeat the questions
        if questionIndex > NumberOfQuestions { questionIndex = 1 }
        desiredValue = question!.truthValue
    }

}
