//
//  ContentView.swift
//  EPHS App
//
//  Created by 90305863 on 9/30/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Monday - Thursday").font(.title)
            HStack {
                List {
                    Text("Period First")
                    Text("Period Two")
                    Text("Period Three")
                    Text("      fifth Lunch")
                    Text("      Second Lunch")
                    Text("      Third Lunch")
                    Text("      sixth Lunch")
                    Text("Period Four")
                }//.frame(maxWidth: 150, maxHeight: height, alignment: .center)
                List {
                    Text("7:50 -  9:15")
                    Text("9:20 - 10:45")
                    Text("10:50 -  1:05")
                    Text("10:50 - 11:20")
                    Text("11:25 - 11:55")
                    Text("12:00 - 12:30")
                    Text("12:35 -  1:05")
                    Text("1:10 -  2:35")
                }//.frame(maxWidth: 120, maxHeight: height, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
