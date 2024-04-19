//
//  ExtractingFucntionsAndSubViewsSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 22/04/24.
//

import SwiftUI

struct ExtractingFucntionsAndSubViewsSwiftUIView: View {
    
    @State var backGroundColor: Color = Color.orange
    
    var body: some View {

        ZStack {
            //background
            backGroundColor
                .ignoresSafeArea()
            
            
            //content
            contentlayer
           
        }
    }
    
    var contentlayer: some View {
        VStack {
            Text("Title hai yeh")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .font(.title)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.black
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    )
            })
        }
    }
    
    func buttonPressed() {
        self.backGroundColor = .yellow
    }
}

#Preview {
    ExtractingFucntionsAndSubViewsSwiftUIView()
}
