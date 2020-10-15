//
//  UserScoreController.swift
//  ColorMatch
//
//  Created by Shean Bjoralt on 10/14/20.
//

import Foundation

class UserScoreController {
    
    static let shared = UserScoreController()
    
    var scores: [UserScore] = []
    
    
    // MARK: - CRUD Functions
    
    func createScore(name: String, score: Int) {
        let newScore = UserScore(name: name, score: score)
        var placeholderScores = scores
        placeholderScores.append(newScore)
        //Sorts the array of UserScores by highest score.
        placeholderScores = placeholderScores.sorted { $0.score < $1.score }
        //This gives the top five highest scores
        scores = placeholderScores
        
        //local persistence With Core Data?
        
    }
}





