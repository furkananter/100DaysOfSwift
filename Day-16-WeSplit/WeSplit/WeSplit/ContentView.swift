//
//  ContentView.swift
//  WeSplit
//
//  Created by Furkan Anter on 11/1/22.
//

import SwiftUI

struct ContentView: View {

    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    // FocusState ne işe yarar:
    // @State ile temelde hiçbir farkı yoktur ama input aracılığıyla bir veri çekeceğimiz sıra
    // focus tarafı için kullanılır.
    
    @FocusState private var amountIsFocused: Bool

    let percentages = [5,10,15,20,0,25]
    var totalPerPerson: Double {
        let tipSelection = Double(tipPercentage)
        let peopleCount = Double(numberOfPeople + 2)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
            
        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form{
                Section{
                    TextField("Amount: " , value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "TRY"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of People: ", selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        } // For Each
                    }
                    // Picker
                }// Section -1
                Section{
                    Picker("Tip Percentage", selection: $tipPercentage){
                        ForEach(percentages.sorted(), id: \.self){
                            Text($0, format: .percent)
                        } // For Each
                    } // Picker
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave ?")
                } // Section -2 & Header
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "TRY"))
                } // Section - 3
                Section{
                    Text(totalPerPerson, format: .number)
                }// Section - 4
                header: {
                    Text("How many people?")
                }
            } // FORM
            .navigationTitle("WeSplit")
            // .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Spacer()
                    
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
            
        }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    };
       
}
