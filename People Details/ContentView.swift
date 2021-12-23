//
//  ContentView.swift
//  People Details
//
//  Created by Frimpong Anorchie II on 2021-12-21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ContentViewModel
    
    init() {
        _viewModel = StateObject(wrappedValue: ContentViewModel())
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.users, id: \.email) { user in
                
                Button(action: {}) {
                    UserView(user: user)
                }  
            }
            .navigationTitle("User List")
        }
        .background(Color.black.opacity(0.1))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
