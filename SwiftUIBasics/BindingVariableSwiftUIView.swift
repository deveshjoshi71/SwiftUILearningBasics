//The @Binding property wrapper helps us to connect a @State variable between the parent view and a child or secondary view. This is useful for any situation when we want to update a parent view from within the child view. In this video, you will understand the difference between the two property wrappers and when to implement each.


import SwiftUI

struct BindingVariableSwiftUIView: View {
    
    @State var backgroundColor: Color = .red
    @State var title: String = "Parent view background and title change from button view"
    
    var body: some View {
        ZStack {
          
            //background
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
                //content
            
        }
    }
}


//when background variable is set to @state wrapper then it is not accesible in extracted view or child view


struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .black
    
    
    var body: some View {
        Button(action: {
            backgroundColor = .purple
            buttonColor = Color(.systemCyan)
            title = "Hogya sab change child view se"
        }, label: {
            Text("Button")
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal, 20)
                .background(buttonColor)
                .cornerRadius(20)
        })
    }
}

#Preview {
    BindingVariableSwiftUIView()
}
