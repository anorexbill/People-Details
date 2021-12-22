//
//  UserView.swift
//  People Details
//
//  Created by Frimpong Anorchie II on 2021-12-22.
//

import SwiftUI

struct UserView: View {
    
    var user: User
    
    var body: some View {
        HStack {
            ImageViewer(user.picture.large)
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(user.name.fullName)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(user.email)
                    .font(.body)
            }
            
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(user: User(name: Name(title: "", first: "", last: ""), email: "", picture: Picture(large: "")))
    }
}
