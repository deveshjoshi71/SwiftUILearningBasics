//
//  ScrollSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 19/04/24.
//

import SwiftUI

struct ScrollSwiftUIView: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack {
//                ForEach(0..<100) {index in
//                    Rectangle()
//                }
//            }
//        }
        ScrollView(showsIndicators: false) {
            LazyVStack(spacing: 10) {
                ForEach(0..<10) {index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<10) {index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.random())
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .fill(Color.white)
//                        .frame(width: 200, height: 150)
//                        .shadow(radius: 10)
//                        .padding()
                }
            }
        }
    }
}
extension Color {
    static func random() -> Color {
        let red =  Double.random(in: 0...1)
        let green =  Double.random(in: 0...1)
        let blue =  Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}

#Preview {
    ScrollSwiftUIView()
}
