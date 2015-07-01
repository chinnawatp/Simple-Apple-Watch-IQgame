//
//  MainController.swift
//  IQzy
//
//  Created by cHinn on 6/8/2558 BE.
//  Copyright (c) 2558 cHinn. All rights reserved.
//

import Foundation
import WatchKit

class MainController: WKInterfaceController {
     @IBOutlet var questionLabel: WKInterfaceLabel!
     @IBOutlet var scoreLabel: WKInterfaceLabel!
     @IBOutlet var questionImage: WKInterfaceGroup!
     var question:Question!
     var score:Int=0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        question = Question()
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        score = 0
        scoreLabel.setText(String(format: "%dp", score))
        self.generateQuestion()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func generateQuestion(){
        question.randomQuestion()
        questionLabel.setText(question.questionText)
        questionImage.setBackgroundImageNamed(question.questionImagePath)
    }
    
    @IBAction func tapYes(sender: UIButton) {
        if( question.answer==true){
            score++
        }else{
            self.pushControllerWithName("ConcludeController", context: ["score": "SCORE:\(score)"])
        }
        scoreLabel.setText(String(format: "%dp", score))
        self.generateQuestion()
    }
    
    @IBAction func tapNo(sender: UIButton) {
        if( question.answer==false){
            score++
        }else{
            self.pushControllerWithName("ConcludeController", context: ["score": "SCORE:\(score)"])
        }
        scoreLabel.setText(String(format: "%dp", score))
        self.generateQuestion()
    }

}
