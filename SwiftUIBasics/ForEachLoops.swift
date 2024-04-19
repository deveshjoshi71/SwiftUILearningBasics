//
//  ForEachLoops.swift
//  SwiftUIBasics
//
//  Created by Infoicon on 19/04/24.
//

import SwiftUI

struct ForEachLoops: View {
    
    var data: [String] = ["Hey", "Hello", "Hieeeee"]
    let myString: String = "Hello"
    
    var body: some View {
       
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 50, height: 50)
//                    Text("Index is: \(index)")
//                }
//            }
            //Text("\(myString)")
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]) -> index \(index)")
            }
        }
    }
}

#Preview {
    ForEachLoops()
}
