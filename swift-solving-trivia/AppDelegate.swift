//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var statesAndCapitals: [String : String] = [:]
    
    func solveTrivia(triviaDictionary: [String : String]) -> String {
        
        var stateWithNoSimilarCharacters: String = ""
        
        statesAndCapitals = triviaDictionary
        
        for (state, capital) in statesAndCapitals {
            
            let stateLetters = Array(state.lowercaseString.characters)
            let cityLetters = Array(capital.lowercaseString.characters)
            
            var sharedLetter = false
            
            for letter in cityLetters {
                if letter != " " && stateLetters.contains(letter) {
                    sharedLetter = true
                    break
                }
            }
            if sharedLetter == false {
                stateWithNoSimilarCharacters = state
            }
        }
        print("\n\n\nThe only state whose capital contains none of the characters as the state name is: \(stateWithNoSimilarCharacters)\n\n\n")
        return stateWithNoSimilarCharacters
    }
}