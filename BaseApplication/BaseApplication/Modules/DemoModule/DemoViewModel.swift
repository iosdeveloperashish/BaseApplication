//
//  DemoViewModel.swift
//  BaseApplication
//
//  Created by Ashish Viltoriya on 20/04/21.
//

import Foundation

class DemoViewModel {
    let screenName = "Demo Screen"
    
    // Initialize Optional Value in Boxing Technique
    var textFieldText: Dynamic<String?> = Dynamic(nil)
    
    // Initialize Non Optional String Value in Boxing Technique
    //var nonOptional = Dynamic("")
    
    func manipulateTextFieldText(text: String?) {
        textFieldText.value = text
    }
    
    
}
