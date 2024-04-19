//init stands for initialiser -> runs to setup your view

import SwiftUI

struct ContentView: View {
    
    let backGroundColor: Color
    let count: Int
    let titleForCount: String
    
    
    //this is what you see down in the preView ContentView asking for parameters i.e. same as init just swiftUI being smart and doing it
    //original init created by swiftUI
//    init(backGroundColor: Color, count: Int, titleForCount: String) {
//        self.backGroundColor = backGroundColor
//        self.count = count
//        self.titleForCount = titleForCount
//    }
    
    //modified init
    init(count: Int, fruit: Fruits) {
        self.count = count
        if fruit == .Apples {
            self.titleForCount = "Apples"
            self.backGroundColor = Color.red
        } else {
            self.titleForCount = "Oranges"
            self.backGroundColor = Color.orange
        }
    }
    
    enum Fruits {
        case Apples
        case Oranges
//        case Grapes
//        case Banana
    }
    
    
    var body: some View {
        VStack(spacing: 15
        ) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline()
            Text("\(titleForCount)")
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backGroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .padding()
    }
}

#Preview {
    HStack {
        ContentView(count: 75, fruit: .Apples)
        ContentView(count: 50, fruit: .Oranges)
    }
   
}
