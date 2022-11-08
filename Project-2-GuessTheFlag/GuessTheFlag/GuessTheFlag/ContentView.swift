//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Furkan Anter on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            Text("Tap the flag of ")
            
            ForEach(0..<3){ number in
                Button {
                    
                } label: {
                    Image(countries[number])
                        .renderingMode(.original)
                }
            }
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
