//
//  ContentView2.swift
//  ViewAndModifiers
//
//  Created by Furkan Anter on 11/11/22.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int,Int) -> Content
    
    var body: some View {
        // code goes here
        VStack{
            ForEach(0..<rows, id: \.self){row in
                HStack{
                    ForEach(0..<columns, id: \.self){column in
                        content(row,column)
                    }
                }
            }
        }
    }
}

struct ContentView2: View {
    var body: some View {
        // Do Something
        
        GridStack(rows: 4, columns: 4){ row, col in
            HStack{
                Image(systemName: "\(row * 4 + col).circle")
                Text("R \(row), C \(col)")
                    .foregroundColor(.blue)
                    
            }
            .frame(width:70,height: 100)
            .foregroundColor(.red)
            
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
