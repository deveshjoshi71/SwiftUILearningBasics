/*
 can you only 1 .sheet or .fullscreenCover per view
 and also can you either of them but not both at the same time
 
 there are ways to add logic to the closure of presenting next screen but not yet.
 
 */

import SwiftUI

//struct SheetAndFullScreenCoversInSwiftUIView: View {
//    
//    @State var showNextScreen: Bool = false
//    
//    var body: some View {
//        ZStack {
//            
//            Color.gray
//                .ignoresSafeArea()
//            
//            
//            Button(action: {
//                showNextScreen.toggle()
//            }, label: {
//                Text("Next Screen Button")
//                    .foregroundStyle(Color.white)
//                    .font(.title)
//                    .padding(20)
//                    .background(Color.black)
//                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
//            })
//            
//            .sheet(isPresented: $showNextScreen, content: {
                    //DO NOT ADD CONDITIONAL LOGIC HERE IT WILL NOT WORK PROPERLY AS THIS LOADS THE NEW WITH THE CONTENT VIEW ITSELF AND IF YOU PUT A CONDITION THEN IF THE CONDITION IS NOT SATISFIED IT WILL NOT LOAD THE VIEW IN THE HIRERACHY
//                NextScreen()
//            })
//            
//            
//            
//            Spacer()
//        }
//    }
//}

struct SheetAndFullScreenCoversInSwiftUIView: View {
    
    @State var showNextScreen: Bool = false
    
    var body: some View {
        ZStack {
            
            Color.gray
                .ignoresSafeArea()
            
            
            Button(action: {
                showNextScreen.toggle()
            }, label: {
                Text("Next Screen Button")
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .padding(20)
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
            })
            .fullScreenCover(isPresented: $showNextScreen, content: {
                NextScreen()
            })
            
            
            
            Spacer()
        }
    }
}

struct NextScreen: View {
    
    //@Environment(\.isPresented) var isPresented
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            
            Color.orange
                .ignoresSafeArea()
            
            Button {
                 presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundStyle(Color.black)
                    .font(.title)
                    .padding(20)
                    //.background(Color.white.cornerRadius(10))
            }
            .padding()

        }
    }
}

#Preview {
    SheetAndFullScreenCoversInSwiftUIView()
    //NextScreen()
}
