//
//  pyquick_swiftApp.swift
//  pyquick_swift
//
//  Created by Rak on 7/29/25.
//

import SwiftUI
@available(macOS 15,*)
@main
struct pyquick_swiftApp: App {
    
   
    var body: some Scene {
        WindowGroup {
            ContentView()
                
                .frame(
                    minWidth: 500, idealWidth: 600, maxWidth: .infinity,
                    minHeight: 600, idealHeight: 700, maxHeight: .infinity
                )
                
                
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

