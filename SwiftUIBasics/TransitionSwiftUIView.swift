//
//  TransitionSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 23/04/24.
//

import SwiftUI

struct TransitionSwiftUIView: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        
        let screen = UIScreen.main
        
        VStack(spacing: 20) {
            
            Button("Button") {
                showView.toggle()
            }
            .font(.largeTitle)
            .fontWeight(.bold)

            Spacer()
            
//            if showView {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(height: screen.bounds.height * 0.05)
//                    .transition(.move(edge: .bottom))
//                    //.opacity(showView ? 1.0 : 0)
//                    .animation(.spring())
//            }
            
//            if showView {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(height: screen.bounds.height * 0.25)
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//            }
            
//            if showView {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(height: screen.bounds.height * 0.4)
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//            }
            
            if showView {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(height: screen.bounds.height * 0.25)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .leading)))
                    .animation(.spring())
            }
        }
//        .ignoresSafeArea(edges: .bottom)
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
        
    }
}

#Preview {
    TransitionSwiftUIView()
}
