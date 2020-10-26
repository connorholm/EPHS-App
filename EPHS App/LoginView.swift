//
//  ContentView.swift
//  EPHS App
//
//  Created by 90305863 on 9/30/20.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewRouter: ViewRouter
    
    @State var schoolid: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image("ephs")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 75)
            
            SchoolidTextField(schoolid: $schoolid)
            PasswordSecureField(password: $password)
            
            Button(action: {
                viewRouter.currentPage = "tutorial"
            }) {
                Text("Login")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:228, height: 60)
                    .background(Color.red)
                    .cornerRadius(35)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewRouter: ViewRouter())
    }
}

struct SchoolidTextField: View {
    
    @Binding var schoolid: String
    
    var body: some View {
        TextField("School ID", text: $schoolid)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(5.0)
            .padding(.bottom, 25)
    }
}
