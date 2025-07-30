//
//  ContentView.swift
//  pyquick_swift
//
//  Created by Rak on 7/29/25.
//

import SwiftUI
@available(macOS 15,*)
struct ContentView: View {
    @State private var showAboutView = false
    var body: some View{
        TabView{
            Tab("Python Download", systemImage: "tray.and.arrow.down.fill") {
                
            }
            .badge(2)
            Tab("Pip Manager", systemImage: "tray.and.arrow.up.fill") {
                
            }
            .badge(2)
            
        }
        Spacer()
        Divider()
        VStack(spacing:12){
            HStack(spacing:12){
                if #available(macOS 26.0, *){
                    Button("About App",systemImage: "info.square.fill"){
                        showAboutView=true
                        
                    }
                    .frame(minWidth: 120)
                    
                    .buttonStyle(PrimaryLiquidGlassStyle())
                    .sheet(isPresented: $showAboutView) {
                        AboutView()
                    }
                }else{
                    Button("About App",systemImage: "info.square.fill"){
                        showAboutView=true
                    }
                    .frame(minWidth: 120)
                    .buttonStyle(SecondaryButtonStyle())
                    .sheet(isPresented: $showAboutView) {
                        AboutView()
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
    }
}

