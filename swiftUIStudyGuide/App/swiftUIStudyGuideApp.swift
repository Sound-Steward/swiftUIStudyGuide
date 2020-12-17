//
//  swiftUIStudyGuideApp.swift
//  swiftUIStudyGuide
//
//  Created by K.J.S.G on 12/16/20.
//

import SwiftUI

@main
struct FructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
