//
//  HomeView.swift
//  EPHS App
//
//  Created by 90305863 on 10/20/20.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewRouter: ViewRouter

    var body: some View {
        VStack {
            Text("Our Homepage")
                .font(.title)
            Button(action: {
                viewRouter.currentPage = "login"
            }, label: {
                Text("Log out")
            })
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewRouter: ViewRouter())
    }
}
