/*
 NavigationView -> container -> containing NavigationTitle, NavigationBar (Buttons and toolBar Items)  and and -NavigationLink
 NavigationLink is used to move from one view to another
 */

import SwiftUI

struct NavigationViewAndLinkSwiftUIView: View {
    
    @State var someBoolVariable: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                //looks like a button and on clicking segues us to the destination
                NavigationLink("Hello World") {
                    NewScreenView()
                }
                
                Text("HELLLLLLOOOOOOOO \n worldsssssssssss")
                Text("HELLLLLLOOOOOOOO \n worldsssssssssss")
                Text("HELLLLLLOOOOOOOO \n worldsssssssssss")
                
            }
            .navigationTitle("Inbox")
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(Color.black)
                    buttonView
                },
                trailing: buttonView2
            )
            //.navigationBarTitleDisplayMode(.automatic)
            //.toolbarTitleDisplayMode(.automatic)
           
        }
    }
    
    var buttonView: some View {
        NavigationLink {
            NewScreenView()
        } label: {
            HStack {
                Image(systemName: "flame.fill")
                    .foregroundStyle(Color.black)
//                Image(systemName: "heart.fill")
//                    .foregroundStyle(Color.black)
//                Image(systemName: "person.fill")
//                    .foregroundStyle(Color.black)
            }
        }

    }
    
    var buttonView2: some View {
        NavigationLink {
            NewScreenView()
        } label: {
            Image(systemName: "gear")
                .foregroundStyle(Color.black)
        }

    }
}

struct NewScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack() {
            Color.gray
                .ignoresSafeArea()
//                .navigationBarBackButtonHidden()
                .navigationTitle("Second Screen")
//                .navigationBarTitleDisplayMode(.inline)
            
            
            VStack(spacing: 20) {
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(Color.black)
                            .font(.largeTitle)
                            .padding(20)
                            .offset(x: -20, y: -30)
                    }
                .padding()
                    Spacer()
                }
                Spacer()
               
                NavigationLink("Click Here") {
                    Text("Some Text or view ")
                }
                .padding()
                Spacer()
            }
            
        }
    }
}

#Preview {
    NavigationViewAndLinkSwiftUIView()
}
