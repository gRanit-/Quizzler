//
//  Question.swift
//  Quizzler
//
//  Created by Wojciech Granicki on 26.02.2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation


class Question : Equatable, Hashable {
    
    let questionText : String
    let answer : Bool
    
    init(withText text : String, andAnswer answer : Bool) {
        self.questionText = text
        self.answer = answer
        
    }
    
    var hashValue: Int {
        get {
            return questionText.hashValue
        }
    }
}

func ==(lhs:Question, rhs:Question) -> Bool {
    return lhs.questionText == rhs.questionText
}
