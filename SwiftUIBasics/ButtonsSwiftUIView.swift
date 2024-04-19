//
//  ButtonsSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 22/04/24.
//

import SwiftUI

struct ButtonsSwiftUIView: View {
    
    @State var title: String = "This is my title"
    //state means we are watching its state
    var body: some View {
        
        VStack(spacing: 20){
            
            Text("\(title)")
            
            Button("Press me") {
                self.title = "Button was pressed."
            } //old way to decalre
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button 2 is pressed"
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
            Button(action: {
                self.title = "Save Button Pressed"
            }, label: {
                Text("Save Button")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.green
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "Heart Button Pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                    }
            })
            
            Button(action: {
                self.title = "Last Button Pressed"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(Color.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(lineWidth: 2.0)
                            .shadow(radius: 10)
                    )
            })
        }
    }
}

#Preview {
    ButtonsSwiftUIView()
}
