//
//  ConditionalStatementsSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 23/04/24.
//

import SwiftUI

struct ConditionalStatementsSwiftUIView: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } /*else*/
//                
//            if showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100, height: 100)
//            }
//                
//            if showCircle && showRectangle {
//                Rectangle()
//                    .cornerRadius(25)
//                    .frame(width: 250, height: 100)
//            }
//            
            Button("Login: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    ConditionalStatementsSwiftUIView()
}
