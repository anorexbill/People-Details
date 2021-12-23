//
//  UserView.swift
//  People Details
//
//  Created by Frimpong Anorchie II on 2021-12-22.
//

import SwiftUI

struct UserView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var user: User
    
    var body: some View {
        HStack {
            
            ImageViewer(user.picture.large)
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(user.name.fullName)
                    .fontWeight(.bold)
                    .scaledFont(name: "Chalkboard", size: 24)
                
                Text(user.email)
                    .fontWeight(.semibold)
                    .scaledFont(name: "Chalkboard", size: 16)
            }
            .foregroundColor(colorScheme == .dark ? .white : .black)
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        
        UserView(user: User(name: Name(title: "Mr", first: "Peter ", last: "Parker"), email: "peter@gmail.com", picture: Picture(large: "https://upload.wikimedia.org/wikipedia/commons/4/4e/Macaca_nigra_self-portrait_large.jpg")))
        
            .environment(\.sizeCategory, .accessibilityLarge)
        
    }
}
