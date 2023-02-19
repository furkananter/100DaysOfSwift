//
//  ContentView.swift
//  CalculatorApp
//
//  Created by Furkan Anter on 11/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack() {
                    Spacer()
                    
                    HStack(alignment: .center) {
                        Button(action: {
                            // Action for home button
                        }) {
                            Image(systemName: "house.fill")
                                .font(.title)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            // Action for profile button
                        }) {
                            Image(systemName: "person.fill")
                                .font(.title)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            // Action for system button
                        }) {
                            Image(systemName: "gear")
                                .font(.title)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            // Action for payment button
                        }) {
                            Image(systemName: "creditcard.fill")
                                .font(.title)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Topbar Title")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
