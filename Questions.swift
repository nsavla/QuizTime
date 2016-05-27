//
//  Questions.swift
//  QuizTime
//
//  Created by igmstudent on 4/22/16.
//  Copyright © 2016 igmstudent. All rights reserved.
//

import Foundation

//Random Fucntion for Int. Can be written in utilities.
//Written here as only one function
extension Int {
    func random() -> Int {
        return Int(arc4random_uniform(UInt32(self)))
    }
}

//MARK:- Question Structure -
struct Question {
    var questionName = ""
    var truthValue = false
}


struct QuestionCollection {
    
    let Questions : [Int:Question] =
    [
        1:Question(questionName: "An apple inspired Isaac Newton to discover gravity", truthValue: true),
        2:Question(questionName: "The famous pyramids of Giza lie in Egypt", truthValue: true),
        3:Question(questionName: "The elephant is the fastest animal on land", truthValue: false),
        4:Question(questionName: "Earth is the closest planet to Sun", truthValue: false),
        5:Question(questionName: "A millenium has 1000 years", truthValue: true)
    ]
}
