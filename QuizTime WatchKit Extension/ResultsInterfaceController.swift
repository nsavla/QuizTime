//
//  ResultsInterfaceController.swift
//  QuizTime
//
//  Created by igmstudent on 4/22/16.
//  Copyright © 2016 igmstudent. All rights reserved.
//

import WatchKit
import Foundation

class ResultsInterfaceController: WKInterfaceController {

    //MARK:- ivar -
    @IBOutlet var tryAgainButton: WKInterfaceButton!
    @IBOutlet var resultLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        //Set the result label
        if let resultScore = context as? Int {
            
            resultLabel.setText("The score is \(resultScore)")
        }
    }
    
    //MARK:- Watch Life Cycle
    override func willActivate() {
         // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func didAppear() {
        super.didAppear()
    }
    
    //MARK:- Button Actions
    @IBAction func playAgain() {
        // To call the main menu
        presentControllerWithName("GameInterface", context: nil)
    }
    
    
   
}
