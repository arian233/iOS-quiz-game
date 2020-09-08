//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Arian on 2020-09-08.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q:"2 x 2 = 4", a:"True"),
        Question(q:"8 / 4 = 2", a:"True"),
        Question(q:"3 + 8 < 10", a:"False")
    ]
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else{
            return false
        }
    }
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    func getProgress() ->Float{
        let progress = Float (questionNumber) / Float(quiz.count)
        return progress
    }
    mutating func nextQuestion(){
        if (questionNumber + 1 < quiz.count){
            questionNumber += 1
                        
        }
        else{
            score = 0
            questionNumber = 0
        }
    }
    func getScore() -> Int{
        return score
        
    }
}
