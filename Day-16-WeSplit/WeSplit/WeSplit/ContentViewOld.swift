////
////  ContentView.swift
////  WeSplit
////
////  Created by Furkan Anter on 11/1/22.
////
//
//import SwiftUI
//
//struct ContentView: View {
////   @State var tapCount = 0
////   @State private var name = ""
////   let students = ["Harry", "Furkan", "Şevval"]
////   @State private var possibleStudents = "Harry"
//    @State private var checkAmount = 0.0
//    @State private var numberOfPeople = 2
//    @State private var tipPercentage = 20
//    @FocusState private var amountIsFocused: Bool
//
//    let percentages = [5,10,15,20,0,25]
//    var totalPerPerson: Double {
//        let tipSelection = Double(tipPercentage)
//        let peopleCount = Double(numberOfPeople + 2)
//
//        let tipValue = checkAmount / 100 * tipSelection
//        let grandTotal = checkAmount + tipValue
//        let amountPerPerson = grandTotal / peopleCount
//
//        return amountPerPerson
//    }
//
//    var body: some View {
//        NavigationView {
//            Form{
//                Section{
//                    // TextField("Enter Your F*cking Name:", text: $name)
//                    //Text("Hellowss")
//                    TextField("Amount: " , value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "TRY"))
//                    .keyboardType(.decimalPad)
//
//                    Picker("Number of People: ", selection: $numberOfPeople){
//                        ForEach(2..<100){
//                            Text("\($0) people")
//                        }
//                    }
//                }
//                Section{
//                    Picker("Tip Percentage", selection: $tipPercentage){
//                        ForEach(percentages.sorted(), id: \.self){
//                            Text($0, format: .percent)
//                        }
//                    }
//                    .pickerStyle(.segmented)
//                } header: {
//                    Text("How much tip do you want to leave ?")
//                }
//                Section {
//                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "TRY"))
//                }
//                //                Button("Tap Count: \(tapCount)"){
//                //                    tapCount += 1
//                //                }
//                //                Button("Tap for Reset"){
//                //                    tapCount = 0
//                //                }
//                //                .foregroundColor(.green)
//                //
//                //                ForEach(0..<10){ number in
//                //                Text("Row: \(number)")
//                //                        .foregroundColor(.red)
//                //                }
//                //
//                //                Picker("Select your Student", selection: $possibleStudents){
//                //                    ForEach(students, id: \.self){
//                //                        Text($0)
//                //                    }
//                //                }
//            }
//            // böyle de gösterilir:
//            //            Form{
//            //                ForEach(0..<100){
//            //                Text("Row: \($0)")
//            //                }
//            //            }
//            .navigationTitle("WeSplit")
//            // .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItemGroup(placement: .keyboard){
//                    Button("Done") {
//                        amountIsFocused = false
//                    }
//                }
//            }
//
//
//            /*
//             Form {
//             Group {
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             }
//             .padding(10)
//             Section {
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             }
//             .padding(10)
//
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Text("Hello World")
//             Bu kadar kullanamayız çünkü SwiftUI 10 tane şeye izin veriyor.
//             */
//
//        }
//}
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//
//    };
//
//}
