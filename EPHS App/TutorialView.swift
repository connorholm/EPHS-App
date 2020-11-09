//
//  TutorialView.swift
//  EPHS App
//
//  Created by 90305863 on 10/20/20.
//

import SwiftUI

struct TutorialView: View {
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            Text("Instructions")
                .font(.largeTitle)
                .padding(.init(top: 20, leading: 20, bottom: 0, trailing: 20))
            Text("- Navigate between screens using the menu bar on the bottom of the screen \n- Check how far into class you are with the progress view on the home screen\n-Add homeword and projects to your to-do list and check them off when done").padding(.init(top: 10, leading: 20, bottom: 20, trailing: 20))
            Button( action: {
                viewRouter.currentPage = "home"
            }, label: {
                Text("OK")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width:80, height: 60)
                    .background(Color.red)
                    .cornerRadius(35)
            })
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView(viewRouter: ViewRouter())
    }
}
