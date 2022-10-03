//
//  ContentView.swift
//  ModelsTest
//
//  Created by Taryn Hovenkamp on 10/01/22.
//

// utilized boredapi https://www.boredapi.com/api/activity
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            if let randomActivity = Activity.randomActivity {
                Text("Bored? Try to \(randomActivity.activity)!")
            } else {
                Text("No random activity to do :(")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
