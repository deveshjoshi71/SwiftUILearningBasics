//
//  AnimationsSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 23/04/24.
//

import SwiftUI

struct AnimationsSwiftUIView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button(isAnimated ? "Animation Button Pressed" : "Animation Button Not Pressed") {
//                withAnimation(Animation
//                    .default
//                    //.delay(2.0)
//                    //.repeatCount(10, autoreverses: true)
//                    .repeatForever()
//                ) 
                //{
                    isAnimated.toggle()
                //}
                
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.orange : Color.yellow)
                //.fill(Color.random())
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .offset(/*x: isAnimated ? 0 : 20,*/ y: isAnimated ? 300 : -200)
//                .animation(Animation
//                    .default
//                    //.delay(2.0)
//                    //.repeatCount(10, autoreverses: true)
//                    .repeatForever(autoreverses: true)
//                )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AnimationsSwiftUIView()
}
