//
//  MenuView.swift
//  EPHS App
//
//  Created by 90305189 on 11/2/20.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            Text("Menu Page").font(.title)
            Button(action: {viewRouter.homePage = "webView"} ) {
                Text("Schedule Couselor Appointment")
            }
            Spacer()
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        
        MenuView(viewRouter: ViewRouter())
            .padding()
    }
}
