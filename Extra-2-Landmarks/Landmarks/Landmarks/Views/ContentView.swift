//
//  ContentView.swift
//  Landmarks
//
//  Created by Furkan Anter on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var modelData = ModelData()
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
