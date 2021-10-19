//
//  ContentView.swift
//  Trivia App
//
//  Created by Philippe Reichen on 10/19/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model: Model
  
    
    var body: some View {
        
        VStack {
        
            Text(model.fact)
            .padding()
            
            Button("Get new fact!") {
                model.getFact()
            }
    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: Model())
    }
}
