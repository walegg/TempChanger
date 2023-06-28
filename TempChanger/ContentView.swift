//
//  ContentView.swift
//  TempChanger
//
//  Created by Louis Mille on 28/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var temperature = 0
    
    var toFarenheit: Int {
        let tempChange = ((temperature * 9) / 5) + 32
        
        return tempChange
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Temperature (°C)", value: $temperature, format: .number)

                } header: {
                    Text("Insert temperature in °C")
                }
                
                Section {
                    Text(toFarenheit, format: .number)
                } header: {
                    Text("Here's your temperature converted in °F")
                }
                
            }
            .navigationTitle("TempChanger")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
