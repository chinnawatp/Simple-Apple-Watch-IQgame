//
//  Question.swift
//  IQzy
//
//  Created by cHinn on 6/8/2558 BE.
//  Copyright (c) 2558 cHinn. All rights reserved.
//

import Foundation

class Question {
    var questionText:String!
    var questionImagePath:String!
    var answer:Bool?
    var questionTextArray:[String] = ["PIG","PENCIL","PAPER","COW","CHICKEN","TREE"]
    var imagePathArray:[String] = ["pig-icon","pencil-icon","paper-icon","cow-icon","chicken-icon","tree-icon"]
    
    func setup(){
        
    }
    
    func randomQuestion(){
        var questionTextRandomIndex : Int
        var questionImagePathRandomIndex : Int
        questionTextRandomIndex = Int(arc4random_uniform(3))
        questionText = questionTextArray[questionTextRandomIndex]
        questionImagePathRandomIndex = Int(arc4random_uniform(3))
        questionImagePath = imagePathArray[questionImagePathRandomIndex]
        if(questionTextRandomIndex == questionImagePathRandomIndex){
            answer = true
        }else{
            answer = false
        }
    }
    
}