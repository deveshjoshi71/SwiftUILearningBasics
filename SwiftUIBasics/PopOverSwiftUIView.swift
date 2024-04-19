//
//  PopOverSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 23/04/24.
//

import SwiftUI

struct PopOverSwiftUIView: View {
    
    @State var someBoolVariable: Bool = false
    
    var body: some View {
        ZStack {
            
            //background
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button {
                    someBoolVariable.toggle()
                } label: {
                    Image(systemName: "button.programmable")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.black)
                    
                }
                
                Spacer()
            }
            .padding()
            //METHOD 1 -> sheet
//            .sheet(isPresented: $someBoolVariable, content: {
//                SecondScreenToPresent()
//            })
            
//            //METHOD 2 -> transitions -> can be used as popUp as well ////IMPROVEMENT
//            if someBoolVariable {
//                SecondScreenToPresent(someBoolVariable: $someBoolVariable)
//                    .frame(width: 300, height: 400, alignment: .center)
//                    .cornerRadius(25)
//                    .padding()
////                    .transition(.move(edge: .bottom))
//            .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
//                    .animation(.spring())
//                    
//            }
//            
            //METHOD 2 -> transitions -> as sheet represtation
//            if someBoolVariable {
//                SecondScreenToPresent(someBoolVariable: $someBoolVariable)
//                    .padding(.top, 300)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring())
//                    
//            }
            
            
            //METHOD 2 -> transitions -> as sheet represtation
            //to soomthen the transition we can add zstack as such
//            ZStack {
//                if someBoolVariable {
//                    SecondScreenToPresent(someBoolVariable: $someBoolVariable)
//                        .padding(.top, 200)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                        
//                }
//            }
//            .zIndex(2.0)
            
            //METHOD 3 -> Animation OFFSET
            SecondScreenToPresent(someBoolVariable: $someBoolVariable)
                .padding(.top, 200)
                .offset(y: someBoolVariable ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
            
        }
    }
}

struct SecondScreenToPresent: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var someBoolVariable: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            //background
            Color.purple
                .ignoresSafeArea()
            
            
            Button {
                //presentationMode.wrappedValue.dismiss() //FOR METHOD 1
                someBoolVariable.toggle()
               
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                
            }
            .padding()
            
            
        }
        
    }
    
}

#Preview {
    PopOverSwiftUIView()
    
//    SecondScreenToPresent()
}
