//
//  StateVariableSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 22/04/24.
//

import SwiftUI

struct StateVariableSwiftUIView: View {

    @State var backGorundColor: Color = Color.orange
    @State var title: String = "Title"
    @State var countVariableForButton: Int = 0
    
    
    var body: some View {
        ZStack {
            //background
            backGorundColor
                .ignoresSafeArea(edges: .all)
            
            //foreground
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(countVariableForButton)")
                    .font(.largeTitle)
                    .underline()
                
                HStack {
                    Button("Button 1") {
                        self.backGorundColor = .purple
                        self.title = "Button is pressed to change the background color to purple."
                        self.countVariableForButton += 1
                    }
                    
                    Button("Button 2") {
                        self.backGorundColor = .black
                        self.title = "Button is pressed to change the background color to black."
                        self.countVariableForButton -= 1
                    }
                }
                
            }
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    StateVariableSwiftUIView()
}
