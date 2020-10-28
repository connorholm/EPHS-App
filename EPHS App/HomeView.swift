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
            Text("Our Homepage")
                .font(.title)
            
            switch viewRouter.homePage {
            case "progress":
                progressView()
            default:
                Text("ERROR: No view")
                    .foregroundColor(Color.red)
            }
            
            Spacer()
            Button(action: {
                viewRouter.currentPage = "login"
            }, label: {
                Text("Log out")
            })
            HStack {
                Button(action: {}) {
                    Image("toDoList")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
                Button(action: {}) {
                    Image("announcements")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
                Button(action: {}) {
                    Image("clubs")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
                Button(action: {}) {
                    Image("menu")
                        .resizable()
                        .frame(width: 60, height: 60)
                
                }
                Button(action: {}) {
                    Image("account")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
            }
            .padding()
            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .center)
            .border(Color.black, width: 1)
        }.frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView(viewRouter: ViewRouter())
        }
    }
}
