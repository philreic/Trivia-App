//
//  Model.swift
//  Trivia App
//
//  Created by Philippe Reichen on 10/19/21.
//

import Foundation

class Model : ObservableObject {
    @Published var fact = ""
    
    init() {
        getFact()
        
    }
    
    func getFact() {
        
        
        let urlString = "http://numbersapi.com/random/trivia"
        
        if let url = URL(string: urlString) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            if let data = data {
                if let stringData = String(data: data, encoding: .utf8) {
                    
                    DispatchQueue.main.async {
                        self.fact = stringData
                    }
                }
            }
        }
        .resume()
    }
    
}

}
