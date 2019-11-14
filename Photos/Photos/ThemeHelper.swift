//
//  ThemeHelper.swift
//  Photos
//
//  Created by Lambda_School_Loaner_219 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_219. All rights reserved.
//

import Foundation

class ThemeHelper{
    let themePreferenceKey = "themePreference"
    
    func setThemePreferenceToDark(){
        UserDefaults.standard.set("Dark", forKey: themePreferenceKey)
    }
        
        func setThemePreferenceToYourColorHere(){
            UserDefaults.standard.set("Green", forKey:themePreferenceKey)
    }
    
    var themePreference: String? {
        if themePreferenceKey == "themePreference"{
            return nil
        }
        return UserDefaults.standard.string(forKey: themePreferenceKey)
        
    }

    init(){
        guard  themePreference == nil  else { return }
        setThemePreferenceToYourColorHere() 
        
    }
}

