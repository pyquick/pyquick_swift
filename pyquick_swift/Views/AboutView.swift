//
//  AboutView.swift
//  pyquick_swift
//
//  Created by Rak on 7/29/25.
//
import SwiftUI
@available(macOS 11,*)
struct AboutView:View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isExpanded: Bool = false
    @Namespace private var namespace
    @MainActor @preconcurrency
    var body: some View {
        
        VStack(spacing: 16) {
            
            HStack {
                Image(systemName: "hammer.fill")
                    .font(.system(size: 32))
                    .foregroundColor(.accentColor)
                VStack(alignment: .leading) {
                    Text("pyquick_swift")
                        .font(.title)
                    
                    Text("Python & Pip Tool ")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
            }
            .padding(.top)
            Divider()
            VStack(alignment: .leading, spacing: 8){
                InfoRow(icon:"number",title:"Version",value: "3.0.0")
                InfoRow(icon:"person",title:"Author",value: "Pyquick")
                InfoRow(icon:"c",title:"CopyRight",value: "© 2025 Pyquick. All Rights Reserved")
            }
            Divider()
            Link(destination: URL(string: "https://github.com/pyquick/pyquick_swift")!) {
                HStack {
                    Image(systemName: "arrow.up.right.square")
                    Text("View on Github")
                }
                .foregroundColor(.accentColor)
            }
            Divider()
            if #available(macOS 26, *){
                Button("close", systemImage: "xmark") {
                    presentationMode.wrappedValue.dismiss()
                }
                .buttonStyle(SmallPrimaryLiquidGlassStyle())
                .badge(3)
                Spacer()
            }else{
                Button("close", systemImage: "xmark") {
                    presentationMode.wrappedValue.dismiss()
                }
                .buttonStyle(BorderedButtonStyle())
                Spacer()
            }
        }
        .padding()
        .frame(width: 390, height: 270)
    }
       
}
struct InfoRow: View {
    let icon: String
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .frame(width: 24)
                .foregroundColor(.secondary)
            Text(title)
                .font(.subheadline)
                .frame(width: 60, alignment: .leading)
            Text(value)
                .font(.subheadline)
                .bold()
            Spacer()
        }
    }
}

