//
//  ExtractingSubviewWithInitializersSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 22/04/24.
//

import SwiftUI

struct ExtractingSubviewWithInitializersSwiftUIView: View {
    var body: some View {
        ZStack(content: {
            Color.black
                .ignoresSafeArea()
            
            //contentlayer
            //MyItem(title: "Oranges", count: 25, color: .cyan)
            
            contentLayer
        })
    }
    
    var contentLayer: some View {
        VStack {
            MyItem(title: "Oranges", count: 25, color: .orange)
            MyItem(title: "Apple", count: 15, color: .red)
            MyItem(title: "WaterMelon", count: 10, color: .green)
        }
    }
}

#Preview {
    ExtractingSubviewWithInitializersSwiftUIView()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .frame(width: 100, height: 100)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
