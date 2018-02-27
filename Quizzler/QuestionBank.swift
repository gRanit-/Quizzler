//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Wojciech Granicki on 26.02.2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var questions = Set<Question>()
    
    init() {
        
        questions.insert(Question(withText: "Valentine\'s day is banned in Saudi Arabia.", andAnswer: true))
        
        questions.insert(Question(withText: "A slug\'s blood is green.", andAnswer: true))
        
        questions.insert(Question(withText: "Approximately one quarter of human bones are in the feet.", andAnswer: true))
        
        questions.insert(Question(withText: "The total surface area of two human lungs is approximately 70 square metres.", andAnswer: true))
        
        questions.insert(Question(withText: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", andAnswer: true))
        
        questions.insert(Question(withText: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", andAnswer: false))
        
        questions.insert(Question(withText: "It is illegal to pee in the Ocean in Portugal.", andAnswer: true))
        
        questions.insert(Question(withText: "You can lead a cow down stairs but not up stairs.", andAnswer: false))
        
        questions.insert(Question(withText: "Google was originally called \"Backrub\".", andAnswer: true))
        
        questions.insert(Question(withText: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", andAnswer: true))
        
        questions.insert(Question(withText: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", andAnswer: false))
        
        questions.insert(Question(withText: "No piece of square dry paper can be folded in half more than 7 times.", andAnswer: false))
        
        questions.insert(Question(withText: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", andAnswer: true))
    }
}
