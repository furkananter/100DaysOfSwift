//
//  ContentView.swift
//  WeSplit
//
//  Created by Furkan Anter on 11/1/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        Form {
            Group {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
                .padding(10)
            Section {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
                .padding(10)
            
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Bu kadar kullanamayız çünkü SwiftUI 10 tane şeye izin veriyor.
           
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    };
       
}
