//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Furkan Anter on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Turkey","Estonia", "France", "Germany", "Ireland", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var showingScore = false
    @State private var isFalse = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack{
            // Linear Gradient
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.8, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.16, green: 0.15, blue: 0.80), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                                        .ignoresSafeArea()
            // Main VStack
            VStack(spacing:40){
                
                Text("Harita Bilmece")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                VStack(spacing:20){
                    // Second VStack
                    VStack{
                        Text("Tıklaman Gereken Harita: ")
                            .foregroundColor(.white)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .foregroundColor(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3){ number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                            
                                .renderingMode(.original)
                                .shadow(radius: 5)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                    }
                }
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                VStack {
                    Text("Skorun: \(score)")
                        .font(.title3)
                        .foregroundColor(.white)
                    Button("Yeniden Başlat",role: .destructive, action: resetTheGame)
                    .buttonStyle(.borderedProminent)
                }
                .alert(scoreTitle, isPresented: $showingScore) {
                    Button("Continue", action: askQuestion)
                } message: {
                    Text("Your score is \(score)")
                }
            }

        }
        
    }
    
    struct FlagImage: ViewModifier {
        func body(content: Content) -> some View {
            content
                .background(.black)
        }
    }
    
    extension View {
        func imageGenerator() -> some View {
            modifier(FlagImage)
        }
    }
    
    func flagTapped(_ number: Int ){
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else{
            scoreTitle = "Wrong"
            score -= 1
            isFalse = true
            if score == -1 {
               resetTheGame()
            }
        }
        
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    func resetTheGame(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        score = 0
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

