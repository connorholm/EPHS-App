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
    var body: some View {
        Text("Assignments Page")

            HStack{
                
                Text(clas)
                Text(":")
                Text(whatAssignment)
        }
        
        
    }
}

struct AssignmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentsView()
    }
}
