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
        VStack() {
            Text("My Homepage")
                .font(.title)
            switch viewRouter.homePage {
            case "toDoList":
                progressView()
            case "announcements":
                AnnouncementsView()
            case "clubs":
                ClubView()
            case "menu":
                MenuView(viewRouter: ViewRouter())
            case "account":
                AccountView()
            case "webView":
                webViews()
            default:
                Text("ERROR: No \(viewRouter.homePage) view")
                    .foregroundColor(Color.red)
            }            
            Spacer()
            Button(action: {
                viewRouter.currentPage = "login"
            }, label: {
                Text("Log out")
            })
            NavMenuView(viewRouter: viewRouter)
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView(viewRouter: ViewRouter())
        }
    }
}
