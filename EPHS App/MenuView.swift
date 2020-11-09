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
//            Button(action: {viewRouter.homePage = "webview"} ) {
//                Text("Schedule Couselour Appointment")
//            }
           
            // We could use the webview, but I did this to link a website with a button in my previous app
            Button(action: {UIApplication.shared.open(URL(string: "https://app.acuityscheduling.com/schedule.php?owner=20439951")!)}) {
                Text("Schedule Couselor Appointment")
            }
            //
        }
        Spacer()
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        
        MenuView(viewRouter: ViewRouter())
            .padding()
    }
}
