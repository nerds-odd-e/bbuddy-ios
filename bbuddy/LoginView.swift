//
//  LoginView.swift
//  bbuddy
//
//  Created by Jackson Zhang on 2021/8/24.
//  Copyright © 2021 odd-e. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image(uiImage: UIImage.fontAwesomeIcon(name: .moneyBill, style: .solid, textColor: .green, size: CGSize(width: 300, height: 300)))
            TextField("Email", text: $email)
                .frame(width: 300, height: 45)
            Divider()
                .frame(width: 300)
                .offset(x: 0, y: -10)
            SecureField("Password", text: $password)
                .frame(width: 300, height: 45)
            Divider()
                .frame(width: 300)
                .offset(x: 0, y: -10)
            Button(action: {
                let api = Api()
                api.signIn(email, password: password, action: {})
            }, label: {
                Text("Sign In")
                    .padding(13)
                    .frame(width: 300, height: 45)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(22)
            })
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
