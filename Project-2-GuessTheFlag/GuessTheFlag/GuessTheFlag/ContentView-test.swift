//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Furkan Anter on 11/7/22.
//

import SwiftUI

struct ContentViewTest: View {
    @State private var showingAlert = false
    var body: some View {
        Button("Ömer bir erkek midir?"){
            showingAlert = true
        } .alert("Ömer erkek mi?" ,isPresented: $showingAlert) {
            Button("Hayır", role: .destructive){}
            Button("Evet" ,role: .cancel) {}
        } message: {
            Text("İyi düşün...")
        }
        
        ZStack {
            VStack{
                Color.red
                Color.blue
            }
            Text("Your Content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
//                .cornerRadius(5)
        }
        .ignoresSafeArea()
//        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
//            .ignoresSafeArea()
        
        // böyle bunu uzun yazmaktansa şöyle kısa bir versiyonunu da yazabiliriz:
        
       /// LinearGradient(gradient: Gradient(stops: [
       /// Gradient.Stop(color: .white, location: 0.45),
       /// /// Gradient.Stop(color: .black, location: 0.55),
       /// ]), startPoint: .top, endPoint: .bottom)
        
        /// LinearGradient(gradient: Gradient(stops: [
        /// .init(color: .white, location: 0.45),
        /// .init(color: .black, location: 0.55),
        /// ]), startPoint: .top , endPoint: .bottom)

// radial :
//        RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startRadius: 20, endRadius: 200)
        
// Angular:
//        AngularGradient(gradient: Gradient(colors: [.red, .green, .yellow, .blue, .purple]), center: .center)
        VStack(alignment: .leading,spacing: 50) {
            
            HStack(alignment: .center,spacing: 50) {
                Text("1")
                Text("2")
                Text("3")
            }

            .foregroundColor(.green)
            HStack(alignment: .center ,spacing: 50) {
                Color(red: 1, green: 0.5, blue: 0.1)
                Text("1")
                Text("2")
                Text("3")
                
            }

            .foregroundColor(.red)
            HStack(alignment: .center, spacing: 50) {
                Text("1")
                Text("2")
                Text("3")
                    
            }
            .foregroundColor(.blue)
            
//            ZStack(alignment: .top) {
//                Text("Zstack")
//                Text("This is inside a stack")
//            }
            
        }
        Button("Delete Button", role: .destructive, action: executeDelete)
        VStack{
            Button("Button 1") {}
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) {}
                .buttonStyle(.bordered)
            Button("Button 3") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button 4", role:.destructive) {}
                .buttonStyle(.borderedProminent)
            
            Button{
                print("Button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                // bunlar yerine yukarıdaki:
                //Text("Tap me!")
//                    .padding()
//                    .foregroundStyle(.white)
//                    .background(.red)
            }
            
        }
    }
    func executeDelete() {
        print("now deleting...")
    }
    
        
    }


struct ContentViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTest()
    }
}
