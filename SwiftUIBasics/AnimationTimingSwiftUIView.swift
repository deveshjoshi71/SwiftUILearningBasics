//
//  AnimationTimingSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 23/04/24.
//

import SwiftUI

struct AnimationTimingSwiftUIView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button(isAnimated ? "Animation Started" : "Button Not Pressed") {
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25.0/*isAnimated ? 150.0 : 50.0*/)
                .frame(
                    width: isAnimated ? 350 : 50,
                    height: /*isAnimated ? 200 : */100
                )
                .animation(
                    Animation
                        //.spring()
                        .spring(
                            response: 0.5,
                            dampingFraction: 0.5,
                            blendDuration: 5.0
                         )
                        
                )
//                .rotation3DEffect(
//                    .degrees(45),
//                    axis: (x: 2.0, y: 4.0, z: 2.0)
//                )
                .shadow(color: isAnimated ? .orange : .yellow, radius: 10)
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(
//                    width: isAnimated ? 350 : 50,
//                    height: 100
//                )
//                .animation(
//                    Animation
//                        .easeIn(duration: 5)
//                )
//                .shadow(color: isAnimated ? .red : .green, radius: 10)
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(
//                    width: isAnimated ? 350 : 50,
//                    height: isAnimated ? 150 : 100
//                )
//                .animation(
//                    Animation
//                        .easeInOut(duration: 5)
//                )
//                .shadow(color: isAnimated ? .yellow : .red, radius: 10)
//            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(
//                    width: isAnimated ? 350 : 50,
//                    height: 100
//                )
//                .animation(
//                    Animation
//                        .easeOut(duration: 5)
//                )
//                .shadow(color: isAnimated ? .purple : .cyan, radius: 10)
        }
    }
}

#Preview {
    AnimationTimingSwiftUIView()
}
