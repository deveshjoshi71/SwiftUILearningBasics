//
//  TernaryOperationsSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 23/04/24.
//

import SwiftUI

struct TernaryOperationsSwiftUIView: View {
    
    @State var isStartingState: Bool = false
    @State var randomColor: Color = Color.random()
    
    var body: some View {
        
        VStack(spacing: 20) {
            Button("Color Changing Button") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
//            if isStartingState {
                RoundedRectangle(cornerRadius: isStartingState ? 0 : 25.0)
                    .fill(isStartingState ? Color.red : Color.orange)
                    .frame(
                        width: 300,
                        height: 100
                    )
//            }
//            RoundedRectangle(cornerRadius: 25.0)
//                .fill(Color.orange)
//                .frame(width: 300, height: 100)
        }
        
    }
}

#Preview {
    TernaryOperationsSwiftUIView()
}
