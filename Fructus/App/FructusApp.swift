//
//  FructusApp.swift
//  Fructus
//
//  Created by Zeki Baklan on 6.09.2023.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView() }
            else {
                ContentView()
            }
        }
    }
}
