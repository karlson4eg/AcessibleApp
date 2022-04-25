//
//  ContentView.swift
//  AcessibleApp
//
//  Created by Evi St on 4/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Your score is")
            
            Text("1000")
                .font(.title)
        }
        .accessibilityElement() // children: .ignore is a default value
        .accessibilityLabel("Your score is 1000")
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
