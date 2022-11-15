//
//  ContentView.swift
//  RockPaperScissor
//
//  Created by Furkan Anter on 11/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var rock = 1
    @State private var paper = 2
    @State private var scissors = 3
    @State private var images = ["Rock", "Paper", "Scissors"]
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.green, Color.yellow, Color.red] , startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Rock & Paper & Scissors")
                    .font(.title)
                    .padding(.top)
                HStack {
                    ForEach(0..<3){number in
                        Button {
                            startGame()
                        } label: {
                            Image(images[number])
                                .frame(width: 100, height:50, alignment: .center)
                                .background(.blue)
                                .cornerRadius(20)
                                .shadow(radius: 5)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                    }
                }
                
                .padding(20)
            }
            .background(.thinMaterial)
            .padding(10)
        }
    }
}
func startGame(){
    print("Game has began")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
