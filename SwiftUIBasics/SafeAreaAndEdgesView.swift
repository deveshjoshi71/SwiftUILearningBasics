//
//  SafeAreaAndEdgesView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 19/04/24.
//

import SwiftUI

struct SafeAreaAndEdgesView: View {
    var body: some View {
//        ZStack {
//            
//            //background view
//            Color.orange
//                .ignoresSafeArea(.all)
//            
//            //foreground view
//            VStack {
//                Text("HElllloooooooo")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            //.background(Color.red)
//        }
        
        ZStack {
            
            //background view
            //Color.orange
              //  .ignoresSafeArea(.all)
            
            //foreground view
            ScrollView {
                VStack {
                    Text("Title Goes Here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding()
                    }
                    
                }
//                .background(
//                    Color.red
//                        .ignoresSafeArea()
//                )
            }
//            .background(
//                Color.blue
//                    .ignoresSafeArea()
//            )
            //.background(Color.red)
        }
        .background(Color.gray)
    }
}

#Preview {
    SafeAreaAndEdgesView()
}
