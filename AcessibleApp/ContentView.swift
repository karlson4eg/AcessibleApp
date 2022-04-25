//
//  ContentView.swift
//  AcessibleApp
//
//  Created by Evi St on 4/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var value = 10
    
    var body: some View {
        VStack{
            Text("Value: \(value)!")
                .padding()
            
            Button("Increment"){
                value += 1
            }
            
            Button("Decrement"){
                value -= 1
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction{ direction in
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("Not handled")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
