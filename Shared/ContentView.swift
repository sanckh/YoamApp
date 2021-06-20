//
//  ContentView.swift
//  Shared
//
//  Created by Corey Sutton on 6/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Full Body Workout")
                .font(.largeTitle)
                .fontWeight(.medium)
            Text("For Beginners")
                .fontWeight(.regular)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
