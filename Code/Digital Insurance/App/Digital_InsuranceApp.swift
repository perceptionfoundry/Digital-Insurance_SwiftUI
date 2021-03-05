//
//  Digital_InsuranceApp.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 25/02/2021.
//

import SwiftUI
import IQKeyboardManagerSwift

@main
struct Digital_InsuranceApp: App {
    
    
    init(){
        IQKeyboardManager.shared.enable = true
    }
    var body: some Scene {
        WindowGroup {
            SignInView()
//            PriceView3()
        }
    }
}
