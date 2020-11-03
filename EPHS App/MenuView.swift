//
//  MenuView.swift
//  EPHS App
//
//  Created by 90305189 on 11/2/20.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Text("Menu Page").font(.title)
             if #available(iOS 14.0, *) {
                Link("Schedule Counselour Appointment", destination: URL(string: "https://app.acuityscheduling.com/schedule.php?owner=20439951")!)
            
            
            
                Link("EPHS Library", destination: URL(string: "https://edenpr.follettdestiny.com/cataloging/servlet/presenttitledetailform.do?siteTypeID=-2&siteID=&includeLibrary=true&includeMedia=false&mediaSiteID=&bibID=118253&walkerID=1604334383150")!)
           
            
             }
            Spacer()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .padding()
    }
}
