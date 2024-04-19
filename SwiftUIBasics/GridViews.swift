// all the grid in swiftUI is lazy.
// lazy basically means if have too many items to be displayed then the one's that are on the screen or to be coming on display are the one's that are being created behind the scenes.

import SwiftUI

struct GridViews: View {
    
//    let columns: [GridItem] = [
//        //GridItem(.fixed(20), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(70), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(120), spacing: nil, alignment: nil)
//    ]
    
//    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
//    ]
    
//    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 50), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 100), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 50), spacing: nil, alignment: nil)
//    ]
    
    //real life example
    let example: [GridItem] = [
            GridItem(.flexible(), spacing: 8, alignment: nil),//spacing is added to the right
            GridItem(.flexible(), spacing: 8, alignment: nil),
            GridItem(.flexible(), spacing: 8, alignment: nil)
        ]
    
    //a layout for instaGram ProfileView
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 400)
            
            LazyVGrid(columns: example, alignment: .center, spacing: 8, pinnedViews: [.sectionHeaders], content: {
                
                Section {
                    ForEach(0..<12) {_ in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .padding()
                }
                
                Section {
                    ForEach(0..<18) {_ in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .padding()
                }

                
            })
//            
//            LazyVGrid(columns: example) {
//                ForEach(0..<10) {_ in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
//        .padding()
    }
}

#Preview {
    GridViews()
}
