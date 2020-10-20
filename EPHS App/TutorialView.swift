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
            Text("Tutorial")
                .font(.title)
                .padding()
            Button( action: {
                viewRouter.currentPage = "home"
            }, label: {
                Text("OK")
            })
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView(viewRouter: ViewRouter())
    }
}
