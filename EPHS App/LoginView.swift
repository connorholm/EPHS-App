//
//  ContentView.swift
//  EPHS App
//
//  Created by 90305863 on 9/30/20.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            Button(action: {
                viewRouter.currentPage = "tutorial"
            }) {
                Text("Login").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewRouter: ViewRouter())
    }
}
