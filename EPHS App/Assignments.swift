//
//  Assignments.swift
//  EPHS App
//
//  Created by 90307094 on 10/26/20.
//

import SwiftUI

struct AssignmentsView: View {
    var clas = "what ever class your in"
    var whatAssignment = "teacher assignment"
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text("Chinese")
                .font(.largeTitle)
            Text("assignments")
                .font(.title3)
           
            DisclosureGroup("Title", isExpanded: $isExpanded){
            VStack{
                ForEach(1...5, id: \.self){ num in
                    Text("\(num)")
                        .font(.title3)
                        .padding(.all)
                    
                }
            }
            }
            Spacer()
        }
    }
}

struct AssignmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentsView()
    }
}
