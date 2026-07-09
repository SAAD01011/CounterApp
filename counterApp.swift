
//  ContentView.swift
//  creatbuttons
//
//  Created by Muhammad Saad on 09/07/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    var body: some View {
        VStack{
            Text("The current count value \(count)")
        HStack {
            
            Button("Press for addition "){
             let result = pluscount(count: count)
             count = result
                
            }.font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color.blue)
                .cornerRadius(10)
    
        Button("Press for subtraction "){
            let result = negcount(count: count)
            count = result
            
        }.font(.headline)
            .foregroundColor(.white)
            .padding(.horizontal,1
            )
            .padding(.vertical, 10)
            .background(Color.blue)
            .cornerRadius(10)
    }
        .padding()
    }
    }
}

func pluscount(count: Int) -> Int {
    var result = count + 1
    return result
}

func negcount(count: Int) -> Int {
    if (count == 0) {
        return 0
    }
    var result = count - 1
    return result
}


#Preview {
    ContentView()
}
