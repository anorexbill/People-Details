//
//  ContentViewModel.swift
//  People Details
//
//  Created by Frimpong Anorchie II on 2021-12-22.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    init() {
        loadData()
    }
    
    
    func loadData() {
        guard let url = URL(string: "https://randomuser.me/api/?results=20") else { return }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Users.self, from: data) {
                    DispatchQueue.main.async {
                        self.users = decodedResponse.results
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown Error")")
        }.resume()
    }
    
}
