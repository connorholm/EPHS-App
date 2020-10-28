//
//  time.swift
//  EPHS App
//
//  Created by 90305163 on 10/28/20.
//

import Foundation
func getTime() -> String {
    let now = Date()

    let formatter = DateFormatter()
    formatter.dateStyle = .none
    formatter.timeStyle = .medium
    
    let str = formatter.string(from: now)
    
    let start = str.index(str.startIndex, offsetBy: 6)
    let end = str.index(str.endIndex, offsetBy: -3)
    let range = start..<end
    
    let startMinute = str.index(str.startIndex, offsetBy: 3)
    let endMinute = str.index(str.endIndex, offsetBy: -6)
    let rangeMinute = startMinute..<endMinute
    
    let startHour = str.index(str.startIndex, offsetBy: 0)
    let endHour = str.index(str.endIndex, offsetBy: -9)
    let rangeHour = startHour..<endHour
    
    let second = String(str[range])
    let minute = String(str[rangeMinute])
    let Hour = String(str[rangeHour])

    let time = {
        "Hour": Hour,
        "Minutes": minute,
        "Seconds": second
    }
    return time
}
