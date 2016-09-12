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
    
    func solveTrivia(statesDict: [String: String]) -> String {
      
        for (key, value) in statesDict {
            let state = key
            let characterForState = [Character](state.lowercaseString.characters)
            
            let capital = value
            let characterForCapital = [Character](capital.lowercaseString.characters)
            
//            let similarCharacters = characterForCapital.filter { c in
//                return characterForState.contains(c)
//            }
//            
            let searchForCharacter = characterForCapital.filter { characterForState.contains($0) }
            print(searchForCharacter)
            
            if searchForCharacter.isEmpty {
                print(key)
                return key
                
            }
            
        }
        
        return ""
        
        
    }
    
}
